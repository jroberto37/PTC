# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-12-04 05:03
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ptc', '0010_auto_20171203_2103'),
    ]

    operations = [
        migrations.CreateModel(
            name='Talleres',
            fields=[
                ('id_tal', models.AutoField(primary_key=True, serialize=False)),
                ('taller_tal', models.CharField(max_length=255)),
                ('horas_tal', models.FloatField()),
                ('profesores_tal', models.TextField()),
                ('evidencia_tal', models.CharField(max_length=500)),
                ('year_tal', models.IntegerField()),
                ('profesor_tal', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ptc.Profesor')),
            ],
        ),
    ]
