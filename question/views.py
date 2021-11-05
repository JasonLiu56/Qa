from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage
from .models import Question


# 列表页
def index(request, tag_name=None, page_num=None):
    questions = Question.objects.all()

    # 按照标签过滤
    if tag_name is not None:
        questions = questions.filter(tag__content=tag_name)

    # 分页
    paginator = Paginator(questions, 10)
    if page_num is None:
        page_num = 1
    try:
        page = paginator.page(page_num)
    except EmptyPage:
        page = []

    context = {'page': page, 'tag_name': tag_name, 'page_num': page_num}
    return render(request, 'index.html', context=context)


# 详情视图
def detail(request, id):
    question = Question.objects.filter(id=id).first()
    context = {'question': question}
    return render(request, 'detail.html', context=context)