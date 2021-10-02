from django.db import models


class Menu(models.Model):
    f_name = models.CharField(max_length=50)
    f_price = models.FloatField(default=0)
    f_image = models.FileField(null=True, blank=True)

    def __str__(self):
        return self.f_name
