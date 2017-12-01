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

def docencia(request):
    try:
        usu = request.session["codigo"]
        try:
            #info = Profesor.objects.get(codigo=usu)
            #plazas = Plaza.objects.all()
            years = range(2017,2030)
            periodo = []
            for y in years:
                periodo.append(str(y) + " - " + str(y+1))
            return render(request, 'ptc/docencia.html',{'periodo':periodo})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/docencia.html')
    except KeyError:
        return redirect('/')

def materias(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            mats = Materias.objects.filter(codigo_mat=usu, year_mat = year)
            scale = range(0,101)
            return render(request, 'ptc/materias.html',{'materias':mats,'scale':scale})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/materias.html')
    except KeyError:
        return redirect('/')

def materia_eval(request):
    try:
        usu = request.session["codigo"]
        eval = {
            'curso':request.POST["curso"],
            'planeacion': request.POST["planeacion"],
            'programa': request.POST["programa"],
            'retroal': request.POST["retroal"],
            'ingreso_est': request.POST["ingreso_est"],
            'ingreso_prof': request.POST["ingreso_prof"],
            'est_insc': request.POST["est_insc"],
            'est_apro': request.POST["est_apro"],
            'promedio': request.POST["promedio"],
            'materia':request.POST["materia"]
        }
        try:
            q = Eval_Materia.objects.get(materia_evm=eval["materia"])
            #q = Eval_Materia(curso_evm = eval["curso"], planeacion_evm = eval["planeacion"], programa_evm = eval["programa"], retroal_evm = eval["retroal"], ingreso_est_evm = eval["ingreso_est"],ingreso_prof_evm = eval["ingreso_prof"],est_insc_evm = eval["est_insc"], est_apro_evm = eval["est_apro"], promedio_evm = eval["promedio"])
            q.curso_evm=eval["curso"]
            q.planeacion_evm=eval["planeacion"]
            q.programa_evm=eval["programa"]
            q.retroal_evm=eval["retroal"]
            q.ingreso_est_evm=eval["ingreso_est"]
            q.ingreso_prof_evm=eval["ingreso_prof"]
            q.est_insc_evm=eval["est_insc"]
            q.est_apro_evm=eval["est_apro"]
            q.promedio_evm=eval["promedio"]
            q.save()
            return HttpResponse("Se actualizó con éxito la información")
        except Eval_Materia.DoesNotExist:
            print("Agregando evaluacion")
            mat = Materias.objects.get(id_mat = eval["materia"])
            q = Eval_Materia(curso_evm = eval["curso"], planeacion_evm = eval["planeacion"], programa_evm = eval["programa"], retroal_evm = eval["retroal"], ingreso_est_evm = eval["ingreso_est"],ingreso_prof_evm = eval["ingreso_prof"],est_insc_evm = eval["est_insc"], est_apro_evm = eval["est_apro"], promedio_evm = eval["promedio"], materia_evm = mat)
            q.save()
            return HttpResponse("Se registró con éxito la información")
    except KeyError:
        return HttpResponse("Ocurrió un error inesperado")