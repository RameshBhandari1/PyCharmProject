from django.contrib.auth.models import User
from django.db import models


class order_food(models.Model):
    date = models.DateTimeField(max_length=100)
    phone = models.CharField(max_length=100)
    quantity = models.CharField(max_length=100)
    item = models.TextField(max_length=200,default=0)
    address = models.CharField(max_length=200)
    user = models.ForeignKey(User,default=1,on_delete=models.CASCADE)

    def __str__(self):
        return self.name