from django.contrib import admin
from book.models import order_food


class order_detail(admin.ModelAdmin):
    list_display = ('phone', 'date', 'quantity', 'item','address')


admin.site.register(order_food, order_detail)