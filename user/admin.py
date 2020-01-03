from django.contrib import admin
from .models import MyUser
from django.contrib.auth.admin import UserAdmin
from django.utils.translation import gettext_lazy as _

# Register your models here.


@admin.register(MyUser)
class MyUser(admin.ModelAdmin):
    list_display = ['username', 'email', 'mobile', 'qq', 'weChat']
    # 在用户信息修改界面添加'mobile'、 'qq'、 'weChat'的信息输入框
    # 将源码的UserAdmin.fieldsets转换列表格式
    fieldsets = list(UserAdmin.fieldsets)
    # 重写UserAdmin的fieldsets，添加‘mobile’、‘qq’、‘weChat’
    fieldsets[1] = (_('Personal info'), {
        'fields': ('first_name', 'last_name', 'email', 'mobile', 'qq', 'weChat')
    })
