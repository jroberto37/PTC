from django.conf.urls import url
from . import views

from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    url(r'^$', views.index, name="index"),
    url(r'^valusu/$', views.valusu, name="valusu"),
    url(r'^salir/$', views.salir, name="salir"),
    url(r'^expediente/$', views.expediente, name="expediente"),
    url(r'^docencia/$', views.docencia, name="docencia"),
    url(r'^materias/$', views.materias, name="materias"),
    url(r'^materia_eval/$', views.materia_eval, name="materia_eval"),
    url(r'^upd_expediente/$', views.upd_expediente, name="upd_expediente"),
    url(r'^cursos/$', views.cursos, name="cursos"),
    url(r'^nuevo_curso/$', views.nuevo_curso, name="nuevo_curso"),
    url(r'^elimina_curso/$', views.elimina_curso, name="elimina_curso"),
    url(r'^talleres/$', views.talleres, name="talleres"),
    url(r'^nuevo_taller/$', views.nuevo_taller, name="nuevo_taller"),
    url(r'^elimina_taller/$', views.elimina_taller, name="elimina_taller"),
    url(r'^educon/$', views.educon, name="educon"),
    url(r'^nuevo_educon/$', views.nuevo_educon, name="nuevo_educon"),
    url(r'^elimina_educon/$', views.elimina_educon, name="elimina_educon"),
    url(r'^eduabi/$', views.eduabi, name="eduabi"),
    url(r'^nuevo_eduabi/$', views.nuevo_eduabi, name="nuevo_eduabi"),
    url(r'^elimina_eduabi/$', views.elimina_eduabi, name="elimina_eduabi"),
]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)