from django.contrib import admin
from .models import Question, Tag, Answer


# 注册
admin.site.register(Tag)
admin.site.register(Question)
admin.site.register(Answer)