from django.contrib import messages
from django.http import HttpResponse
from django.shortcuts import render, redirect
from contact.models import Contact


def show_contact(request):
    if request.method == 'POST':
        na = request.POST['na']
        em = request.POST['em']
        su = request.POST['su']
        msg = request.POST['msg']
        contact = Contact(name=na, email=em, subject=su, message=msg)
        contact.save()
        messages.info(request, "Your Message was sent.")
        return redirect('../../contact')

    return render(request, 'contact.html', {'title': 'Contact'})
