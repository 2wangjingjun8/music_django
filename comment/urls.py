from django.urls import path
from . import views

urlpatterns = [
    path('<int:song_id>.html', views.commentview, name='comment'),
]