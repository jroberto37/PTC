# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-12-03 17:23
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('ptc', '0006_acedemia_departamento'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Acedemia',
            new_name='Academia',
        ),
        migrations.RenameField(
            model_name='academia',
            old_name='id_ace',
            new_name='id_aca',
        ),
    ]