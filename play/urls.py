from django.urls import path
from . import views

urlpatterns = [
    path('<int:song_id>.html', views.playview, name='play'),
    path('download/<int:song_id>.html', views.downloadview, name='download'),
]