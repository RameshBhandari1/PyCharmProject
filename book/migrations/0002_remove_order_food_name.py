# Generated by Django 3.0.2 on 2020-02-10 05:50

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('book', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order_food',
            name='name',
        ),
    ]
