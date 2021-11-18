# 生成数据
from algorithms.text_match.model_utils import calc_sim_questions
from utils.ESUtil import ESUtil


# 搜索对象
elastic_search = ESUtil()


# 获取问题和答案
def get_question_answers(question, theta=0.85):
    data_list = elastic_search.search(question)

    if data_list is None or len(data_list) == 0:
        return None

    sim_question_list = []
    for data in data_list:
        sim_question_list.append(data['question'])

    # 计算相似度
    sim_scores = calc_sim_questions(question, sim_question_list)
    if sim_scores is None:
        return None

    answers = []
    for data, sim_score in zip(data_list, sim_scores):
        if sim_score >= theta:
            answers += data['answers']

    return answers


if __name__ == '__main__':
    answers = get_question_answers('喜欢一个人怎么办')
    print(answers)