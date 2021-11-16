# 把大文件切分成小文件json格式
import json


# 切分文件
def split_zhidao_qa(qa_file='D:/BaiduNetdiskDownload/zhidao_qa.json'):
    file_count = 0
    fw = open('./data/zhidao_qa_split_{}'.format(file_count), 'w', encoding='utf-8')

    with open(qa_file, 'r', encoding='utf-8') as fr:
        for index, line in enumerate(fr):
            line = line.strip()
            json_line = json.loads(line)
            question = json_line.get('question', '')
            tags = json_line.get('tags', [])
            answers = json_line.get('answers', [])

            first_sentence = json.dumps({"index": {"_index": "zhidao_qa"}})
            second_sentence = json.dumps({"question": question, "tags": tags, "answers": answers})
            fw.write(first_sentence + '\n')
            fw.write(second_sentence + '\n')

            if index != 0 and index % 10000 == 0:
                fw.close()
                file_count += 1
                print("分割后第{}个文件".format(file_count))
                fw = open('./data/zhidao_qa_split_{}'.format(file_count), 'w', encoding='utf-8')

    fw.close()


if __name__ == '__main__':
    split_zhidao_qa()