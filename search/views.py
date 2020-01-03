from django.shortcuts import render, redirect
from django.core.paginator import PageNotAnInteger, Paginator, EmptyPage
from index.models import *
from django.db.models import Q
# Create your views here.


def searchview(request, page):
    if request.method == 'GET':
        # 热搜歌曲
        search_song = Dynamic.objects.select_related('song').order_by('-dynamic_search').all()[:6]
        kword = request.session.get('kword', '')
        if kword:
            song_info = Song.objects.values('song_id', 'song_name', 'song_singer', 'song_time').\
                filter(Q(song_name__contains=kword) | Q(song_singer=kword)).order_by('-song_release').all()
        else:
            song_info = Song.objects.values('song_id', 'song_name', 'song_singer', 'song_time').\
                order_by('-song_release').all()
        paginator = Paginator(song_info, 5)
        try:
            contacts = paginator.page(page)
        except PageNotAnInteger:
            contacts = paginator.page(1)
        except EmptyPage:
            contacts = paginator.page(paginator.num_pages)
        # 添加歌曲搜索次数
        song_exist = Song.objects.filter(song_name=kword)
        if song_exist:
            song_id = song_exist[0].song_id
            dynamic_info = Dynamic.objects.filter(song_id=int(song_id)).first()
            if dynamic_info:
                dynamic_info.dynamic_search += 1
                dynamic_info.save()
            else:
                dynamic = Dynamic(dynamic_plays=0, dynamic_search=1, dynamic_down=0, song_id=song_id)
                dynamic.save()
        return render(request, 'search.html', locals())
    else:
        # 处理POST请求，并重定向到搜索页面
        request.session['kword'] = request.POST.get('kword', '')
        return redirect('/search/1.html')


