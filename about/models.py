from django.db import models


class Chef(models.Model):
    c_name = models.CharField(max_length=50)
    c_post = models.CharField(max_length=100)
    c_image = models.FileField(null=True, blank=True)

    def __str__(self):
        return self.c_name


class Customer(models.Model):
    cu_name = models.CharField(max_length=50)
    cu_review = models.CharField(max_length=1000)
    cu_image = models.FileField(null=True, blank=True)

    def __str__(self):
        return self.cu_name


class Stories(models.Model):
    title = models.CharField(max_length=50)
    des = models.CharField(max_length=1000)
    date = models.DateField(max_length=50)
    image = models.FileField(null=True, blank=True)

    def __str__(self):
        return self.title