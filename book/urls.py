from django.urls import path
from book import views

urlpatterns = [
    path('mybooking/', views.show_my_sub),
    path('update/<id>', views.update),
    path('delete/<id>', views.delete_post),
    path('', views.order)
]