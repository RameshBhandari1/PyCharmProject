from django.shortcuts import render
from menu.models import Menu


def show_menu(request):
    m_menu = Menu.objects.all()
    return render(request, 'menu.html',  {'m_menu': m_menu, 'title': 'Menu'})

