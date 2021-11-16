# 处理数据
import re
import json
import random
import time
import pandas as pd
from faker import Faker
from datetime import datetime


fake = Faker('zh')


# 提取标签数据
def extract_tags(qa_file='D:/BaiduNetdiskDownload/zhidao_qa.json'):
    tag_dict = {}
    with open(qa_file, 'r', encoding='utf-8') as fr:
        for index, line in enumerate(fr):
            line = line.strip()
            json_line = json.loads(line)
            # question = json_line.get('question', None)
            tags = json_line.get('tags', None)
            # answers = json_line.get('answers', None)
            if tags is not None:
                tag = tags[0]
                if tag not in tag_dict:
                    tag_dict[tag] = len(tag_dict) + 1

            if index % 10000 == 0:
                print("处理了{}条数据".format(index))

    with open('./data/tags.json', 'w', encoding='utf-8') as fw:
        fw.write(json.dumps(tag_dict))

    with open('./data/tags.txt', 'w', encoding='utf-8') as fw:
        for tag_item in tag_dict.items():
            content = tag_item[0]
            id_ = tag_item[1]
            add_time = datetime.strftime(datetime.fromtimestamp(time.time()), '%Y-%m-%d %H:%M:%S')
            fw.write('{}\t{}\t{}\n'.format(id_, content, add_time))


# 抽取问题和答案
def extract_question_answers(qa_file='D:/BaiduNetdiskDownload/zhidao_qa.json'):
    with open('./data/tags.json', 'r', encoding='utf-8') as fr:
        tag_dict = json.loads(fr.read())

    file_count = 0
    answer_id = 1
    q_id_list, q_content_list, q_add_date_list, q_add_time_list, q_tag_id_list, q_username_list, q_avatar_index_list \
        = [], [], [], [], [], [], []
    a_id_list, a_username_list, a_email_list, a_content_list, aq_id_list, a_add_time_list, a_avatar_index_list, \
    a_liked_num_list = [], [], [], [], [], [], [], []

    with open(qa_file, 'r', encoding='utf-8') as fr:
        for index, line in enumerate(fr):
            line = line.strip()
            json_line = json.loads(line)
            question = json_line.get('question', None)
            question_id = index + 1
            tags = json_line.get('tags', None)
            answers = json_line.get('answers', None)

            if question is not None and tags is not None and answers is not None:
                question_time = time.time() + (question_id//100000) * 3600 - random.randint(1, 5) * 3600 - random.randint(1, 60)

                id_ = question_id
                content = re.sub('\t', '', question)
                add_date = datetime.strftime(datetime.fromtimestamp(question_time), '%Y-%m-%d')
                add_time = datetime.strftime(datetime.fromtimestamp(question_time), '%Y-%m-%d %H:%M:%S')
                tag_id = tag_dict[tags[0]]
                username = fake.name()
                question_avatar_index = random.randint(0, 13)

                q_id_list.append(id_)
                q_content_list.append(content)
                q_add_date_list.append(add_date)
                q_add_time_list.append(add_time)
                q_tag_id_list.append(tag_id)
                q_username_list.append(username)
                q_avatar_index_list.append(question_avatar_index)

                # 写入问题
                # question_f.write('{}\t{}\t{}\t{}\t{}\t{}\t{}\n'.format(id_, content, add_date, add_time, tag_id, username, question_avatar_index))

                # 写入答案
                for answer in answers:
                    answer_time = question_time + random.randint(1, 5) * 3600 + random.randint(1, 60)

                    _id = answer_id
                    username = fake.name()
                    email = fake.email()
                    content = answer
                    add_time = datetime.strftime(datetime.fromtimestamp(answer_time), '%Y-%m-%d %H:%M:%S')
                    answer_avatar_index = random.randint(0, 13)
                    liked_num = random.randint(500, 2000)

                    a_id_list.append(_id)
                    a_username_list.append(username)
                    a_email_list.append(email)
                    a_content_list.append(content)
                    a_add_time_list.append(add_time)
                    a_avatar_index_list.append(answer_avatar_index)
                    a_liked_num_list.append(liked_num)
                    aq_id_list.append(question_id)

                    # answer_f.write('{}\t{}\t{}\t{}\t{}\t{}\t{}\t{}\n'.format(_id, username, email, content, question_id, add_time, answer_avatar_index, liked_num))
                    answer_id += 1

            if question_id % 10000 == 0:
                question_df = pd.DataFrame({
                    'id': q_id_list,
                    'content': q_content_list,
                    'add_date': q_add_date_list,
                    'add_time': q_add_time_list,
                    'tag_id': q_tag_id_list,
                    'username': q_username_list,
                    'question_avatar_index': q_avatar_index_list
                })
                question_df.to_csv('./data/question_{}.csv'.format(file_count), index=False)

                answer_df = pd.DataFrame({
                    'id': a_id_list,
                    'username': a_username_list,
                    'email': a_email_list,
                    'content': a_content_list,
                    'question_id': aq_id_list,
                    'add_time': a_add_time_list,
                    'answer_avatar_index': a_avatar_index_list,
                    'liked_num': a_liked_num_list,
                })
                answer_df.to_csv('./data/answer_{}.csv'.format(file_count), index=False)
                print("完成第{}个数据文件操作".format(file_count))

                q_id_list, q_content_list, q_add_date_list, q_add_time_list, q_tag_id_list, q_username_list, q_avatar_index_list \
                    = [], [], [], [], [], [], []
                a_id_list, a_username_list, a_email_list, a_content_list, aq_id_list, a_add_time_list, a_avatar_index_list, \
                a_liked_num_list = [], [], [], [], [], [], [], []

                file_count += 1
                break
                # question_f = open('./data/question_{}'.format(file_count), 'w', encoding='utf-8')
                # answer_f = open('./data/answer_{}'.format(file_count), 'w', encoding='utf-8')


if __name__ == '__main__':
    extract_question_answers()