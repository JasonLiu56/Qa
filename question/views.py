from django.shortcuts import render


# 首页视图
def index(request):
    return render(request, 'index.html')


# 详情视图
def detail(request):
    return render(request, 'detail.html')