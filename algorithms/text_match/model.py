from bert4keras.backend import keras, set_gelu, K
from keras.layers import Dropout, Dense, Lambda
from bert4keras.models import build_transformer_model
from bert4keras.optimizers import Adam
from algorithms.text_match.config import Config as config

set_gelu('tanh')  # 切换gelu版本


# 建立模型
def build_model():
    # 加载预训练模型
    bert = build_transformer_model(
        config_path=config.config_path,
        checkpoint_path=config.checkpoint_path,
        model='albert',
        return_keras_model=False,
    )

    output = Lambda(lambda x: x[:, 0], name='CLS-token')(bert.model.output)
    output = Dropout(0.5)(output)
    output = Dense(
        units=1,
        activation='sigmoid',
        kernel_initializer=bert.initializer
    )(output)

    model = keras.models.Model(bert.model.input, output)

    model.compile(
        loss='mae',
        optimizer=Adam(2e-5),  # 用足够小的学习率
        # optimizer=PiecewiseLinearLearningRate(Adam(5e-5), {10000: 1, 30000: 0.1}),
        metrics=['mae'],
    )
    return model


# 评估函数
def evaluate(model, data):
    total_loss = 0.
    step = 0
    for x_true, y_true in data:
        y_pred = model.predict(x_true)
        total_loss += K.eval(K.mean(keras.metrics.mean_absolute_error(y_true,y_pred)))
        step += 1

    return total_loss / step


# 评估回调函数
class Evaluator(keras.callbacks.Callback):
    def __init__(self, test_generator):
        self.best_mse = 1000.0
        self.test_generator = test_generator

    def on_epoch_end(self, epoch, logs=None):
        mse = evaluate(self.model, self.test_generator)
        if mse < self.best_mse:
            self.best_mse = mse
            self.model.save_weights(config.save_model_file)
        print('val_mae: %.5f, best_mae: %.5f\n' %(mse, self.best_mse))