from django.urls import path
from . import views

urlpatterns = [
	path('index/', views.index, name ='index'),
    path('create/', views.create, name ='book_create'),
    path('list/', views.list, name ='book_list'),
    ]
