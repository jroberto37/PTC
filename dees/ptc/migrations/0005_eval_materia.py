# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-12-01 04:35
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('ptc', '0004_materias'),
    ]

    operations = [
        migrations.CreateModel(
            name='Eval_Materia',
            fields=[
                ('id_evm', models.AutoField(primary_key=True, serialize=False)),
                ('curso_evm', models.BooleanField(default=0)),
                ('planeacion_evm', models.BooleanField(default=0)),
                ('programa_evm', models.BooleanField(default=0)),
                ('retroal_evm', models.BooleanField(default=0)),
                ('ingreso_est_evm', models.IntegerField(default=0)),
                ('ingreso_prof_evm', models.IntegerField(default=0)),
                ('est_insc_evm', models.IntegerField(default=0)),
                ('est_apro_evm', models.IntegerField(default=0)),
                ('promedio_evm', models.FloatField(default=0)),
                ('materia_evm', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='ptc.Materias')),
            ],
        ),
    ]
