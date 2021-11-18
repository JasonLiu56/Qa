from bert4keras.snippets import sequence_padding, DataGenerator
from bert4keras.tokenizers import Tokenizer
from algorithms.text_match.config import Config as config

# 建立分词器
tokenizer = Tokenizer(config.dict_path, do_lower_case=True)


# 加载数据
def load_data():
    D = []
    with open(config.data_file, 'r', encoding='utf-8') as fr:
        for line in fr.readlines():
            items = line.split('\t')
            if len(items) == 3:
                question1, question2, sim = items[0], items[1], float(items[2])
                D.append((question1, question2, sim))
    idx = int(len(D) * 0.2)
    train_data = D[idx:]
    test_data = D[:idx]
    return train_data, test_data


# albert数据生成
class data_generator(DataGenerator):
    """数据生成器
    """
    def __iter__(self, random=False):
        batch_token_ids, batch_segment_ids, batch_labels = [], [], []
        for is_end, (text1, text2, label) in self.sample(random):
            token_ids, segment_ids = tokenizer.encode(
                text1, text2, maxlen=config.maxlen
            )
            batch_token_ids.append(token_ids)
            batch_segment_ids.append(segment_ids)
            batch_labels.append([label])
            if len(batch_token_ids) == self.batch_size or is_end:
                batch_token_ids = sequence_padding(batch_token_ids)
                batch_segment_ids = sequence_padding(batch_segment_ids)
                batch_labels = sequence_padding(batch_labels)
                yield [batch_token_ids, batch_segment_ids], batch_labels
                batch_token_ids, batch_segment_ids, batch_labels = [], [], []