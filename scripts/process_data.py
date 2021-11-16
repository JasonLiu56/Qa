# 处理数据
import json
import random
import time
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
                    tag_dict[tag] = len(tag_dict)

            if index % 10000 == 0:
                print("处理了{}条数据".format(index))

    with open('./data/tags.json', 'w', encoding='utf-8') as fw:
        fw.write(json.dumps(tag_dict))

    with open('./data/tags.txt', 'w', encoding='utf-8') as fw:
        for tag_item in tag_dict.items():
            single_tag_dict = {'id': tag_item[1], 'content': tag_item[0]}
            print(single_tag_dict)
            fw.write(json.dumps(single_tag_dict) + '\n')


# 抽取问题和答案
def extract_question_answers(qa_file='D:/BaiduNetdiskDownload/zhidao_qa.json'):
    with open('./data/tags.json', 'r', encoding='utf-8') as fr:
        tag_dict = json.loads(fr.read())

    file_count = 0
    question_f = open('./data/question_{}'.format(file_count), 'w', encoding='utf-8')
    answer_f = open('./data/answer_{}'.format(file_count), 'w', encoding='utf-8')
    answer_id = 1

    with open(qa_file, 'r', encoding='utf-8') as fr:
        for index, line in enumerate(fr):
            line = line.strip()
            json_line = json.loads(line)
            question = json_line.get('question', None)
            question_id = index + 1
            tags = json_line.get('tags', None)
            answers = json_line.get('answers', None)

            if question is not None and tags is not None and answers is not None:
                question_time = time.time() - 24 * 3600 - random.randint(1, 5) * 3600 - random.randint(1, 60)
                question_dict = {
                    'id': question_id,
                    'content': question,
                    'tag_id': tag_dict[tags[0]],
                    'username': fake.name(),
                    'avatar_index': random.randint(0, 13),
                    'add_date': datetime.strftime(datetime.fromtimestamp(question_time), '%Y-%m-%d'),
                    'add_time': datetime.strftime(datetime.fromtimestamp(question_time), '%Y-%m-%d %H:%M:%S'),
                }
                # 写入问题
                question_f.write(json.dumps(question_dict) + '\n')
                # 写入答案
                for answer in answers:
                    answer_time = question_time + random.randint(1, 5) * 3600 + random.randint(1, 60)
                    answer_dict = {
                        'id': answer_id,
                        'username': fake.name(),
                        'email': fake.email(),
                        'content': answer,
                        'question_id': question_id,
                        'add_time': datetime.strftime(datetime.fromtimestamp(answer_time), '%Y-%m-%d %H:%M:%S'),
                        'avatar_index': random.randint(0, 13),
                        'liked_num': random.randint(500, 2000)
                    }
                    answer_f.write(json.dumps(answer_dict) + '\n')
                    answer_id += 1

            if question_id % 10000 == 0:
                print("完成第{}个数据文件操作".format(file_count))
                file_count += 1
                question_f.close()
                answer_f.close()
                break
                # question_f = open('./data/question_{}'.format(file_count), 'w', encoding='utf-8')
                # answer_f = open('./data/answer_{}'.format(file_count), 'w', encoding='utf-8')


if __name__ == '__main__':
    extract_question_answers()