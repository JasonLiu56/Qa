# 工具函数
import jieba.analyse
import tensorflow as tf
from Qa.settings import MODEL_HOST, MODEL_PORT, COMMON_SIM_MODEL_NAME
from tensorflow_serving.apis import prediction_service_pb2
from grpc.beta import implementations
from tensorflow_serving.apis import predict_pb2
from algorithms.text_match.data_loader import data_generator
from algorithms.text_match.config import Config as config


# 预加载jieba.analyse, 防止首次调用时间长
jieba.analyse.extract_tags("默认")


# 获取停用词集合
with open(config.stop_words_file,'r',encoding='utf-8') as f:
    stop_words = set([word.strip() for word in f.readlines()])

channel = implementations.insecure_channel(MODEL_HOST, MODEL_PORT)
stub = prediction_service_pb2.beta_create_PredictionService_stub(channel)

# 启动时调用模型预热模型，防止服务刚启动时速度过慢
test_data = [("请问牛奶多少钱？", "请帮我订一张明天的机票", 0.0)]
test_generator = data_generator(test_data, len(test_data))


for x_true, _, in test_generator:
    request = predict_pb2.PredictRequest()
    request.model_spec.name = COMMON_SIM_MODEL_NAME # Conf.SIM_MODEL_NAME  # 这个name跟tensorflow_model_server  --model_name="username" 对应
    request.model_spec.signature_name = 'predict'  # 这个signature_name  跟signature_def_map 对应
    request.inputs['input_token'].CopyFrom(
        tf.contrib.util.make_tensor_proto(x_true[0], dtype=tf.float32))  # shape跟 keras的model.input类型对应
    request.inputs['input_segment'].CopyFrom(
        tf.contrib.util.make_tensor_proto(x_true[1], dtype=tf.float32))  # shape跟 keras的model.input类型对应
    response = stub.Predict(request, 10.0)  # 10 secs timeout
    y_pred = tf.contrib.util.make_ndarray(response.outputs['output']).reshape(1, -1)[0]
    print(y_pred)


# 计算文本相似度
def calc_sim_questions(question, match_questions):
    # 检查question、match_questions参数
    if question is None or match_questions is None or len(match_questions) == 0:
        return None

    text_match_data = [(question, match_question, 0.0) for match_question in match_questions]
    text_match_data_generator = data_generator(text_match_data, len(text_match_data))

    y_preds = []
    for x_true, _, in text_match_data_generator:
        request = predict_pb2.PredictRequest()
        request.model_spec.name = COMMON_SIM_MODEL_NAME    # Conf.SIM_MODEL_NAME # 这个name跟tensorflow_model_server  --model_name="username" 对应
        request.model_spec.signature_name = 'predict'   # 这个signature_name  跟signature_def_map 对应
        request.inputs['input_token'].CopyFrom(
            tf.contrib.util.make_tensor_proto(x_true[0], dtype=tf.float32))  # shape跟 keras的model.input类型对应
        request.inputs['input_segment'].CopyFrom(
            tf.contrib.util.make_tensor_proto(x_true[1], dtype=tf.float32))  # shape跟 keras的model.input类型对应
        response = stub.Predict(request, 3.0)  # 10 secs timeout
        y_preds = tf.contrib.util.make_ndarray(response.outputs['output']).reshape(1,-1)[0]

    return y_preds


if __name__ == '__main__':
    question = "订飞机票"
    match_questions = ["请帮我订一张明天的机票", "我想订机票"]
    sim_list = calc_sim_questions(question, match_questions)
    print(sim_list)