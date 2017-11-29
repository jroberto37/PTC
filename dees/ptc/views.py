# -*- coding: utf-8 -*-
from __future__ import unicode_literals


import json
from django.http import HttpResponse
from .miclass.validacion import Validacion
from .models import *
from django.shortcuts import render
from django.shortcuts import redirect

# Create your views here.

def index(request):
    try:
        codigo = request.session['codigo']
        print(codigo)
        print("la sesion expira en")
        prof = request.session['codigo']
        expira = request.session.get_expiry_date()
        return render(request, 'ptc/index.html',{'codigo':prof,'expira':expira})
    except KeyError:
        return render(request, 'ptc/login.html')

    return render(request, 'ptc/index.html')

def valusu(request):
    try:
        usu = request.POST["usu"]
        passwo = request.POST["passW"]
        val = Validacion()
        val.valNum(usu)
        val.valAlfa(passwo)
        if val.info["status"] == False:
            return render(request, 'ptc/login.html', {'mensaje': 'Verifique que el formato de los datos sea el correcto'})
        try:
            q = Profesor.objects.get(codigo = usu, passw = passwo)
            request.session["codigo"] = usu
            request.session.set_expiry(600)
            return redirect('/')
        except Profesor.DoesNotExist:
            return render(request, 'ptc/login.html',{'mensaje':'El codigo o contraseña son incorrectos'})
    except KeyError:
        return render(request, 'ptc/login.html')

def expediente(request):
    try:
        usu = request.session["codigo"]
        try:
            info = Profesor.objects.get(codigo=usu)
            plazas = Plaza.objects.all()
            return render(request, 'ptc/expediente.html', {'usu': info,'plazas':plazas})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/expediente.html', {'mensaje':'El codigo no existe'})
    except KeyError:
        return redirect('/')
