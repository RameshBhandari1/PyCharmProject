from django.contrib import admin
from menu.models import Menu


class about_menu(admin.ModelAdmin):
    list_display = ('f_name', 'f_price', 'f_image')


admin.site.register(Menu, about_menu)
