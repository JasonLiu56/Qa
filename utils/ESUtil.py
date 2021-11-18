# 用于操作es
from elasticsearch import Elasticsearch


class ESUtil(object):
    def __init__(self, index_name="zhidao_qa", ip="127.0.0.1"):
        self.index_name = index_name
        self.es = Elasticsearch([ip])
        self.create_index()

    def create_index(self):
        _index_mappings = {
          "settings": {
            "analysis": {
              "analyzer": {
                "default": {
                  "type": "ik_max_word"
                },
                "default_search": {
                  "type": "ik_smart"
                }
              }
            }
          }
        }
        if self.es.indices.exists(index=self.index_name) is not True:
            res = self.es.indices.create(index=self.index_name, body=_index_mappings)
            print("创建es索引:{}".format(self.index_name))
            print(res)

    # 插入信息
    def insert_data(self, data):
        try:
            res = self.es.index(index=self.index_name, body=data)
        except:
            return False
        return True

    # 删除信息
    def delete_data(self, id):
        try:
            res = self.es.delete(index=self.index_name, id=id)
        except:
            return False
        return True

    # 获取信息
    def get_data(self, id):
        try:
            res = self.es.get(index=self.index_name, id=id)
            return res['_source']
        except:
            return None

    # 搜索
    def search(self, keyword):
        doc = {
            "query": {
                "match": {
                    "question": keyword
                }
            }
        }

        try:
            _search = self.es.search(index=self.index_name, body=doc)
            data_list = []
            for hit in _search['hits']['hits']:
                data_list.append(hit['_source'])
            return data_list
        except:
            return None

        # for hit in _search['hits']['hits']:
        #     print(hit['_source'])


if __name__ == '__main__':
    elastic_search = ESUtil()
    # is_success = elastic_search.insert_data({'question': '我是谁', 'answers': ['你是一个笨蛋']})
    # print(is_success)
    # is_success = elastic_search.delete_data(id='ti77MH0BkRlCeuCl_rxo')
    # print(is_success)
    # data = elastic_search.get_data('ty4CMX0BkRlCeuClt7w6')
    # print(data)
    data_list = elastic_search.search('谁')
    print(data_list)



