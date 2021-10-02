from django.contrib import admin
from contact.models import Contact


class contact_detail(admin.ModelAdmin):
    list_display = ('name', 'email', 'subject', 'message')


admin.site.register(Contact, contact_detail)