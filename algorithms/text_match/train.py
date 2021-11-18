import sys

# 将text_match添加到环境变量中
sys.path.append("./")
sys.path.append("../")
sys.path.append("../../")

from bert4keras.backend import set_gelu
from algorithms.text_match.model import build_model, Evaluator
from algorithms.text_match.data_loader import load_data, data_generator
from algorithms.text_match.config import Config as config

# 切换gelu版本
set_gelu('tanh')

# 转换数据集 & 加载数据集
train_data, test_data = load_data()

# 数据生成器
train_generator = data_generator(train_data, config.batch_size)
test_generator = data_generator(test_data, config.batch_size)


# train
def train():
    evaluator = Evaluator(test_generator=test_generator)
    model = build_model()
    model.fit_generator(
        train_generator.forfit(),
        steps_per_epoch=len(train_generator),
        epochs=30,
        callbacks=[evaluator]
    )


if __name__ == '__main__':
    train()