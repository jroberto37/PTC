# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-12-03 18:59
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ptc', '0008_curso'),
    ]

    operations = [
        migrations.AlterField(
            model_name='curso',
            name='evidencia_cur',
            field=models.CharField(max_length=50),
        ),
    ]