import os
from algorithms import config_path, checkpoint_path, dict_path


class Config():
    maxlen = 64
    batch_size = 256
    embedding_dim = 300
    vocab_size = None
    dropout = 0.5
    base_dir = os.path.abspath(os.path.dirname(__file__))
    config_path = config_path
    checkpoint_path = checkpoint_path
    dict_path = dict_path
    train_data_file = os.path.join(base_dir, 'data', 'lcqmc_train.csv')
    test_data_file = os.path.join(base_dir, 'data', 'lcqmc_test.csv')
    dev_data_file = os.path.join(base_dir, 'data', 'lcqmc_dev.csv')
    stop_words_file = os.path.join(base_dir, "data", "stop_words.txt")
    save_model_file = os.path.join(base_dir, 'output', 'best_model.weights')
    data_file = os.path.join(base_dir, 'data', 'train_sim.txt')
    data_id_file = os.path.join(base_dir, 'data', 'data_id.pkl')