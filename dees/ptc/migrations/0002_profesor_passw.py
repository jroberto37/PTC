# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-28 05:04
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ptc', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='profesor',
            name='passw',
            field=models.CharField(max_length=255, null=True),
        ),
    ]
