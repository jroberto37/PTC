# -*- coding: utf-8 -*-
from __future__ import unicode_literals


from django.db import models

# Create your models here.
class Profesor(models.Model):
    codigo = models.IntegerField(primary_key=True)
    nombre = models.CharField(max_length=255)
    appat = models.CharField(max_length=255)
    apmat = models.CharField(max_length=255)
    mail = models.CharField(max_length=255)
    categoria = models.CharField(max_length=255)
    depto = models.CharField(max_length=255)
    academia = models.CharField(max_length=255)
    passw = models.CharField(max_length=255, null=True)

    @property
    def __str__(self):
        return self.nombre + " " + self.appat + " " + self.apmat

class Plaza(models.Model):
    id_pla = models.AutoField(primary_key=True)
    plaza_pla = models.CharField(max_length=255)

    @property
    def __str__(self):
        return self.plaza_pla

class Academia(models.Model):
    id_aca = models.AutoField(primary_key=True)
    nombre_aca = models.CharField(max_length=255)

    @property
    def __str__(self):
        return self.nombre_aca

class Departamento(models.Model):
    id_dep = models.AutoField(primary_key=True)
    nombre_dep = models.CharField(max_length=255)

    @property
    def __str__(self):
        return self.nombre_de

class Materias(models.Model):
    id_mat = models.AutoField(primary_key=True)
    codigo_mat = models.IntegerField()
    materia_mat = models.CharField(max_length=255)
    year_mat = models.IntegerField()

    def __str__(self):
        return self.materia_mat

class Eval_Materia(models.Model):
    id_evm = models.AutoField(primary_key=True)
    curso_evm = models.BooleanField(default=0)
    planeacion_evm = models.BooleanField(default=0)
    programa_evm = models.BooleanField(default=0)
    retroal_evm = models.BooleanField(default=0)
    ingreso_est_evm = models.IntegerField(default=0)
    ingreso_prof_evm = models.IntegerField(default=0)
    est_insc_evm = models.IntegerField(default=0)
    est_apro_evm = models.IntegerField(default=0)
    promedio_evm = models.FloatField(default=0)
    materia_evm = models.ForeignKey(Materias, on_delete=models.CASCADE)

class Curso(models.Model):
    id_cur = models.AutoField(primary_key=True)
    actividad_cur = models.CharField(max_length=255)
    avance_cur = models.CharField(max_length=255)
    evidencia_cur = models.CharField(max_length=500)
    materia_cur = models.ForeignKey(Materias, on_delete=models.CASCADE)

    @property
    def __str__(self):
        return self.actividad_cur

class Talleres(models.Model):
    id_tal = models.AutoField(primary_key=True)
    taller_tal = models.CharField(max_length=255)
    horas_tal = models.FloatField()
    profesores_tal = models.TextField()
    evidencia_tal = models.CharField(max_length=500)
    year_tal = models.IntegerField()
    profesor_tal = models.ForeignKey(Profesor, on_delete=models.CASCADE)


    @property
    def __str__(self):
        return self.actividad_cur