from django.contrib import messages
from django.shortcuts import render, redirect
from menu.models import Menu
from book.models import order_food


def order(request):
    if request.method == 'POST':
        phone = request.POST['phone']
        date = request.POST['date']
        qua = request.POST['qua']
        item = request.POST['item']
        add = request.POST['add']
        user = request.user
        Order = order_food( phone=phone, date=date, quantity=qua, item=item, address=add, user=user)
        Order.save()
        messages.info(request, "Ordered Successfully.")
        return redirect('../../booking/mybooking')
    m_menu = Menu.objects.all()
    return render(request, 'book.html', {'m_menu': m_menu, 'title': 'Booking / Order'})


def update(request, id):
    o = order_food.objects.get(id=id)
    m_menu = Menu.objects.all()
    if request.method == 'POST':
        o.date = request.POST['date']
        o.phone = request.POST['phone']
        o.qua = request.POST['qua']
        o.item = request.POST['item']
        o.add = request.POST['add']
        o.save()
        messages.info(request, "Update Successfully.")
        return redirect('../../booking/mybooking')
    return render(request,'Edit.html',{'o': o, 'm_menu': m_menu, 'title': 'Update'})


def show_my_sub(request):
   o = order_food.objects.filter(user=request.user)
   return render(request, 'mybooking.html', {'order': o, 'title': 'My Booking and Order'})


def delete_post(request, id):
    post = order_food.objects.get(id=id)
    post.delete()
    messages.info(request, "Delete Successfully.")
    return redirect('../../booking/mybooking')
