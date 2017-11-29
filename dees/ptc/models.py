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