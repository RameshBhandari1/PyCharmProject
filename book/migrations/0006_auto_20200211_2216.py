# Generated by Django 3.0.2 on 2020-02-11 16:31

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('book', '0005_auto_20200211_1245'),
    ]

    operations = [
        migrations.AlterField(
            model_name='order_food',
            name='item',
            field=models.TextField(default=0, max_length=200),
        ),
    ]