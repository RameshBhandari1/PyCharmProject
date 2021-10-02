from django.shortcuts import render
from menu.models import Menu
from about.models import Chef, Customer,Stories


def home_page(request):
    m_menu = Menu.objects.all().order_by('-id')[:4]
    menu = Menu.objects.all().order_by('id')[:4]
    story = Stories.objects.all().order_by('-id')[:3]
    a_chef = Chef.objects.all()
    a_customer = Customer.objects.all()
    return render(request, 'home.html', {'m_menu': m_menu, 'menu': menu, 'a_chef': a_chef, 'a_customer': a_customer, 'story': story, 'title': 'Home'})