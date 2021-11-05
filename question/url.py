from django.urls import path
from . import views


urlpatterns = [
    path('', views.index),
    path('<int:page_num>/', views.index, name='index'),
    path('list/<str:tag_name>/<int:page_num>', views.index, name='list'),
    path('detail/<int:id>/', views.detail, name='detail'),
]