# Generated by Django 3.0.2 on 2020-02-11 07:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('book', '0004_order_food_user'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='order_food',
            name='email',
        ),
        migrations.RemoveField(
            model_name='order_food',
            name='name',
        ),
        migrations.RemoveField(
            model_name='order_food',
            name='person',
        ),
    ]
