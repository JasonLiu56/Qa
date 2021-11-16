# 导入数据进es
import os


# 导入数据进es
def load_data_into_es():
    file_names = os.listdir('./data')[2:]
    for file_name in file_names:
        file_name = os.path.join('./data', file_name)
        # 执行命令
        os.system('''curl -XPOST "http://localhost:9200/user/_bulk" -H "content-type:application/json" --data-binary @{}
        '''.format(file_name))
        print('*' * 20)


if __name__ == '__main__':
    load_data_into_es()
