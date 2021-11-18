# 将模型转换成pb格式，便于使用tensorflow serving部署
import os
import tensorflow as tf
import keras.backend as K
from algorithms.text_match.model import build_model
from algorithms.text_match.data_loader import data_generator
from algorithms.text_match.config import Config as config

# 设置打印级别
tf.logging.set_verbosity(tf.logging.INFO)
sess = tf.Session()
K.set_session(sess)


# 转换函数
def save_model_for_production(model, version, path='prod_models'):
    tf.keras.backend.set_learning_phase(1)
    path = os.path.join(config.base_dir, path)

    if not os.path.exists(path):
        os.mkdir(path)

    export_path = os.path.join(
        tf.compat.as_bytes(path),
        tf.compat.as_bytes(version))

    builder = tf.saved_model.builder.SavedModelBuilder(export_path)
    model_input_token = tf.saved_model.utils.build_tensor_info(model.input[0])
    model_input_segment = tf.saved_model.utils.build_tensor_info(model.input[1])
    model_output = tf.saved_model.utils.build_tensor_info(model.output)     # 用于判断相似度
    cls_token = tf.saved_model.utils.build_tensor_info(model.get_layer("CLS-token").output)  # 用于导出albert预训练的句子向量

    prediction_signature = (
        tf.saved_model.signature_def_utils.build_signature_def(
            inputs={'input_token': model_input_token, 'input_segment': model_input_segment},
            outputs={'output': model_output, 'cls_token': cls_token},
            method_name=tf.saved_model.signature_constants.PREDICT_METHOD_NAME))

    builder.add_meta_graph_and_variables(
        sess=sess, tags=[tf.saved_model.tag_constants.SERVING],
        signature_def_map={
            'predict':
                prediction_signature,
        })

    builder.save()


# 转换模型
def convert_model_pb():
    model = build_model()

    # 如果model文件存在，导入相似度计算模型
    if os.path.isfile(config.save_model_file):
        model.load_weights(config.save_model_file)
        print("导入模型")

    # 调通模型
    test_data = [("请帮我订一张明天的机票？", "请帮我订一张明天的机票", 0.0)]
    test_generator = data_generator(test_data, len(test_data))
    for x_true, _, in test_generator:
        print(model.predict(x_true))

    # 转换
    export_path = "common_sim_model"
    save_model_for_production(model, "1", export_path)


if __name__ == '__main__':
    convert_model_pb()