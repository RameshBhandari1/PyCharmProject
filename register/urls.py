from django.urls import path

from register import views

urlpatterns = [
    path('register/', views.show_reg, name='register'),
    path('login/', views.show_login, name='login'),
    path('logout/', views.do_logout, name='logout'),
    ]