# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-12-01 02:33
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('ptc', '0003_plaza'),
    ]

    operations = [
        migrations.CreateModel(
            name='Materias',
            fields=[
                ('id_mat', models.AutoField(primary_key=True, serialize=False)),
                ('codigo_mat', models.IntegerField()),
                ('materia_mat', models.CharField(max_length=255)),
                ('year_mat', models.IntegerField()),
            ],
        ),
    ]