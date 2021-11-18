import os

# 基础目录
base_dir = os.path.abspath(os.path.dirname(__file__))
# albert config目录
config_path = os.path.join(base_dir, 'albert', 'albert_config.json')
# albert checkpoint目录
checkpoint_path = os.path.join(base_dir, 'albert', 'albert_model.ckpt')
# albert dict path
dict_path = os.path.join(base_dir, 'albert', 'vocab.txt')