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
        return self.taller_tal

class Taller_Educacion(models.Model):
    id_tae = models.AutoField(primary_key=True)
    taller_tae = models.CharField(max_length=255)
    horas_tae = models.FloatField()
    profesores_tae = models.TextField()
    evidencia_tae = models.CharField(max_length=500)
    year_tae = models.IntegerField()
    profesor_tae = models.ForeignKey(Profesor, on_delete=models.CASCADE)
    status_tae = models.CharField(max_length=255, null=True)

    @property
    def __str__(self):
        return self.taller_tae

class Taller_EduAbierta(models.Model):
    id_tea = models.AutoField(primary_key=True)
    taller_tea = models.CharField(max_length=255)
    horas_tea = models.FloatField()
    profesores_tea = models.TextField()
    evidencia_tea = models.CharField(max_length=500)
    year_tea = models.IntegerField()
    profesor_tea = models.ForeignKey(Profesor, on_delete=models.CASCADE)
    status_tea = models.CharField(max_length=255, null=True)

    @property
    def __str__(self):
        return self.taller_tea

class Material_Didactico(models.Model):
    id_mad = models.AutoField(primary_key=True)
    tipo_mad = models.CharField(max_length=255)
    titulo_mad = models.CharField(max_length=255)
    evidencia_mad = models.CharField(max_length=500)
    year_mad = models.IntegerField()
    profesor_mad = models.ForeignKey(Profesor, on_delete=models.CASCADE)

    @property
    def __str__(self):
        return self.titulo_mad

class Proceso_Titulacion(models.Model):
    id_prt = models.AutoField(primary_key=True)
    tipo_prt = models.CharField(max_length=255)
    nivel_prt = models.CharField(max_length=255)
    titulo_prt = models.CharField(max_length=255)
    evidencia_prt = models.CharField(max_length=500)
    year_prt = models.IntegerField()
    profesor_prt = models.ForeignKey(Profesor, on_delete=models.CASCADE)

    @property
    def __str__(self):
        return self.titulo_prt