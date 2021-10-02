from django.contrib import admin
from about.models import Chef, Customer, Stories
# Register your models here.


class about_chef(admin.ModelAdmin):
    list_display = ('c_name', 'c_post', 'c_image')


class about_customer(admin.ModelAdmin):
    list_display = ('cu_name', 'cu_review', 'cu_image')


class about_stories(admin.ModelAdmin):
    list_display = ('title', 'date', 'des', 'image')


admin.site.register(Chef, about_chef)
admin.site.register(Customer, about_customer)
admin.site.register(Stories, about_stories)