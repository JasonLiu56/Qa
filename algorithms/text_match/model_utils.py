from algorithms.text_match.model import build_model
from algorithms.text_match.config import Config as config
from algorithms.text_match.data_loader import data_generator


# 相似度模型
model = build_model()
model.load_weights(config.save_model_file)


# 计算文本相似度
def calc_sim_questions(question, match_questions):
    # 检查question、match_questions参数
    if question is None or match_questions is None or len(match_questions) == 0:
        return None

    text_match_data = [(question, match_question, 0.0) for match_question in match_questions]
    text_match_data_generator = data_generator(text_match_data, len(text_match_data))

    y_preds = None
    for x_true, _, in text_match_data_generator:
        y_preds = model.predict(x_true).reshape(1,-1)[0]
    return y_preds


if __name__ == '__main__':
    question = "订飞机票"
    match_questions = ["请帮我订一张明天的机票", "我想订机票"]
    sim_list = calc_sim_questions(question, match_questions)
    print(sim_list)