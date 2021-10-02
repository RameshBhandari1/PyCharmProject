from django.contrib import messages
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponse
from django.shortcuts import render, redirect
from about.models import Chef, Customer, Stories


def show_about(request):
    if request.method == 'POST':
        na = request.POST['na']
        rev = request.POST['rev']
        img = request.FILES['img']
        fs = FileSystemStorage()
        fs.save(img.name, img)
        customer = Customer(cu_name=na, cu_review=rev, cu_image=img)
        customer.save()
        messages.info(request, "Your review has been sent.")
        return redirect('../../about')

    a_chef = Chef.objects.all()
    a_customer = Customer.objects.all()
    return render(request, 'about.html', {'a_chef': a_chef, 'a_customer': a_customer,'title': 'About'})


def show_stories(request):
    story = Stories.objects.all()
    return render(request, 'stories.html', {'title': 'Stories','story': story})