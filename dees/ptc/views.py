# -*- coding: utf-8 -*-
from __future__ import unicode_literals
from django.utils import timezone
import os
import json
from django.http import HttpResponse
from setuptools.command import upload

from .miclass.validacion import Validacion
from .models import *
from django.shortcuts import render
from django.shortcuts import redirect

#Para cargar archivos
from django.conf import settings
from django.core.files.storage import FileSystemStorage

# Create your views here.

def index(request):
    try:
        codigo = request.session['codigo']
        print(codigo)
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


def salir(request):
    try:
        del request.session['codigo']
        #request.session["codigo"].delete()
        return HttpResponse("ok_session_close")
    except KeyError:
        return HttpResponse("err_session_close")


def expediente(request):
    try:
        usu = request.session["codigo"]
        try:
            info = Profesor.objects.get(codigo=usu)
            plazas = Plaza.objects.all()
            deptos = Departamento.objects.all()
            academias = Academia.objects.all()
            return render(request, 'ptc/expediente.html', {'usu': info,'plazas':plazas,'deptos':deptos,'academias':academias})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/expediente.html', {'mensaje':'El codigo no existe'})
    except KeyError:
        return redirect('/')

def upd_expediente(request):
    try:
        usu = request.session["codigo"]
        try:
            mail = request.POST["mail"]
            plaza = request.POST["plaza"]
            depto = request.POST["depto"]
            academia = request.POST["academia"]
            q = Profesor.objects.get(codigo=usu)
            q.mail = mail
            q.depto = depto
            q.categoria = plaza
            q.academia = academia
            q.save()
            return HttpResponse("Se actualizó con éxito su expediente")
            #return render(request, 'ptc/expediente.html', {'usu': info,'plazas':plazas,'deptos':deptos,'academias':academias})
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
            #mats = Materias.objects.filter(codigo_mat=usu, year_mat = year)
            mats = Materias.objects.raw("Select * From ptc_materias left join ptc_eval_materia on materia_evm_id = id_mat where codigo_mat = " + usu + " and year_mat = "+year)
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

def cursos(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            mats = Materias.objects.filter(codigo_mat=usu, year_mat = year)
            cursos = Curso.objects.raw("Select * From ptc_curso left join ptc_materias on codigo_mat = "+usu+" where id_mat = materia_cur_id and year_mat = "+year)
            #mats = Materias.objects.raw("Select * From ptc_materias left join ptc_eval_materia on materia_evm_id = id_mat where codigo_mat = " + usu + " and year_mat = "+year)
            #scale = range(0,101)
            return render(request, 'ptc/cursos.html',{'mats':mats, 'cursos':cursos})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/cursos.html')
    except KeyError:
        return redirect('/')

def nuevo_curso(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            if request.FILES["fileEvidencia"]:
                actividad = request.POST["actividad"]
                asignatura = request.POST["asignatura"]
                avance = request.POST["avance"]

                myfile = request.FILES['fileEvidencia']
                fs = FileSystemStorage()
                url = "cursos/"+str(timezone.now())+"_"+asignatura+"_"+myfile.name
                url = url.replace(" ","")
                url = url.lower()
                #filename = fs.save('cursos/'+myfile.name, myfile)
                #filename = fs.save(url, myfile)
                fs.save(url, myfile)
                mat = Materias.objects.get(id_mat=asignatura)
                q = Curso(actividad_cur=actividad, avance_cur=avance, evidencia_cur=url, materia_cur=mat)
                q.save()
                return HttpResponse("Se registró con éxito la activdad")
            return HttpResponse("Error al procesar la actividad")
        except Materias.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de registrar la actividad")
    except KeyError:
        return redirect('/')

def elimina_curso(request):
    try:
        usu = request.session["codigo"]
        evidencia = request.POST["evidencia"]
        try:
            q = Curso.objects.get(id_cur=evidencia)
            archivo = q.evidencia_cur
            q.delete()
            file_path = settings.BASE_DIR +"/media/" +archivo
            #print(file_path)
            if os.path.isfile(file_path):
                os.remove(file_path)
            return HttpResponse("Se eliminó con éxito la actividad")
        except Curso.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de eliminar la actividad")
    except KeyError:
        return redirect('/')

def talleres(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            profs = Profesor.objects.order_by('appat')
            lsttalleres = Talleres.objects.filter(year_tal = year, profesor_tal=usu)
            return render(request, 'ptc/talleres.html', {'profs':profs,'talleres':lsttalleres})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/talleres.html')
    except KeyError:
        return redirect('/')

def nuevo_taller(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            if request.FILES["fileTTaller"]:
                taller = request.POST["nomTTaller"]
                horas = request.POST["horasTTaller"]
                participantes = request.POST["listaprof"]
                myfile = request.FILES['fileTTaller']
                fs = FileSystemStorage()
                url = "talleres/"+str(timezone.now())+"_"+year+"_"+"_"+usu+"_"+myfile.name
                url = url.replace(" ","")
                url = url.lower()
                fs.save(url, myfile)
                profe = Profesor.objects.get(codigo=usu)
                q = Talleres(taller_tal = taller, horas_tal = horas, profesores_tal = participantes, evidencia_tal=url, year_tal=year, profesor_tal = profe)
                q.save()
                return HttpResponse("Se registró con éxito el taller")
            return HttpResponse("Error al procesar el tallers")
        except Profesor.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de registrar el taller")
    except KeyError:
        return redirect('/')

def elimina_taller(request):
    try:
        usu = request.session["codigo"]
        evidencia = request.POST["evidencia"]
        try:
            q = Talleres.objects.get(id_tal=evidencia)
            archivo = q.evidencia_tal
            q.delete()
            file_path = settings.BASE_DIR +"/media/" +archivo
            #print(file_path)
            if os.path.isfile(file_path):
                os.remove(file_path)
            return HttpResponse("Se eliminó con éxito el taller")
        except Curso.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de eliminar el taller")
    except KeyError:
        return redirect('/')

def educon(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            profs = Profesor.objects.order_by('appat')
            lsttalleres = Taller_Educacion.objects.filter(year_tae = year, profesor_tae=usu)
            return render(request, 'ptc/educacion_continua.html', {'profs':profs, 'talleres':lsttalleres})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/educacion_continua.html')
    except KeyError:
        return redirect('/')

def nuevo_educon(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            if request.FILES["fileTTallerEC"]:
                taller = request.POST["nomTTallerEC"]
                horas = request.POST["horasTTallerEC"]
                participantes = request.POST["listaprof"]
                status = request.POST["slcTEstatusEC"]
                myfile = request.FILES['fileTTallerEC']
                fs = FileSystemStorage()
                url = "educon/"+str(timezone.now())+"_"+year+"_"+"_"+usu+"_"+myfile.name
                url = url.replace(" ","")
                url = url.lower()
                fs.save(url, myfile)
                profe = Profesor.objects.get(codigo=usu)
                q = Taller_Educacion(taller_tae = taller, horas_tae = horas, profesores_tae = participantes, evidencia_tae=url, year_tae=year, profesor_tae = profe, status_tae = status)
                q.save()
                return HttpResponse("Se registró con éxito el taller")
            return HttpResponse("Error al procesar el tallers")
        except Profesor.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de registrar el taller")
    except KeyError:
        return redirect('/')

def elimina_educon(request):
    try:
        usu = request.session["codigo"]
        evidencia = request.POST["evidencia"]
        try:
            q = Taller_Educacion.objects.get(id_tae=evidencia)
            archivo = q.evidencia_tae
            q.delete()
            file_path = settings.BASE_DIR +"/media/" +archivo
            #print(file_path)
            if os.path.isfile(file_path):
                os.remove(file_path)
            return HttpResponse("Se eliminó con éxito el taller")
        except Curso.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de eliminar el taller")
    except KeyError:
        return redirect('/')

def eduabi(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            profs = Profesor.objects.order_by('appat')
            lsttalleres = Taller_EduAbierta.objects.filter(year_tea = year, profesor_tea=usu)
            return render(request, 'ptc/educacion_abierta.html', {'profs':profs, 'talleres':lsttalleres})
        except Profesor.DoesNotExist:
            return render(request, 'ptc/educacion_abierta.html')
    except KeyError:
        return redirect('/')

def nuevo_eduabi(request):
    try:
        usu = request.session["codigo"]
        year = request.POST["year"]
        try:
            if request.FILES["fileTTallerEA"]:
                taller = request.POST["nomTTallerEA"]
                horas = request.POST["horasTTallerEA"]
                participantes = request.POST["listaprof"]
                status = request.POST["slcTEstatusEA"]
                myfile = request.FILES['fileTTallerEA']
                fs = FileSystemStorage()
                url = "eduabi/"+str(timezone.now())+"_"+year+"_"+"_"+usu+"_"+myfile.name
                url = url.replace(" ","")
                url = url.lower()
                fs.save(url, myfile)
                profe = Profesor.objects.get(codigo=usu)
                q = Taller_EduAbierta(taller_tea = taller, horas_tea = horas, profesores_tea = participantes, evidencia_tea=url, year_tea=year, profesor_tea = profe, status_tea = status)
                q.save()
                return HttpResponse("Se registró con éxito el taller")
            return HttpResponse("Error al procesar el tallers")
        except Profesor.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de registrar el taller")
    except KeyError:
        return redirect('/')

def elimina_eduabi(request):
    try:
        usu = request.session["codigo"]
        evidencia = request.POST["evidencia"]
        try:
            q = Taller_EduAbierta.objects.get(id_tea=evidencia)
            archivo = q.evidencia_tea
            q.delete()
            file_path = settings.BASE_DIR +"/media/" +archivo
            #print(file_path)
            if os.path.isfile(file_path):
                os.remove(file_path)
            return HttpResponse("Se eliminó con éxito el taller")
        except Curso.DoesNotExist:
            return HttpResponse("Ocurrió un error al momento de eliminar el taller")
    except KeyError:
        return redirect('/')