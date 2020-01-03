from django.urls import path
from . import views

urlpatterns = [
    path('home/<int:page>.html', views.homeview, name='home'),
    path('login.html', views.loginview, name='login'),
    path('logout.html', views.logoutview, name='logout'),
]
