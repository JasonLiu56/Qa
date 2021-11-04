from django.db import models
from datetime import datetime


# 标签实体
class Tag(models.Model):
    content = models.CharField(verbose_name='标签内容', max_length=50)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)

    def __str__(self):
        return self.content


# 问题实体
class Question(models.Model):
    content = models.CharField(verbose_name='问题内容', max_length=200)
    tag = models.ForeignKey(Tag, verbose_name='标签', on_delete=models.CASCADE, db_index=True, db_constraint=False)
    add_date = models.DateField(verbose_name='添加日期', default=datetime.now, db_index=True)
    add_time = models.DateTimeField(verbose_name='添加时间', default=datetime.now)

    def __str__(self):
        return self.content


# 答案实体
class Answer(models.Model):
    username = models.CharField(verbose_name='用户名', max_length=50)
    email = models.CharField(verbose_name='邮箱', max_length=50)
    question = models.ForeignKey(Question, verbose_name='问题', on_delete=models.CASCADE, db_index=True, db_constraint=False)
    content = models.TextField(verbose_name='答案')

    def __str__(self):
        return self.content