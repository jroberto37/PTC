from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name="index"),
    url(r'^valusu/$', views.valusu, name="valusu"),
    url(r'^expediente/$', views.expediente, name="expediente"),
    url(r'^docencia/$', views.docencia, name="docencia"),
    url(r'^materias/$', views.materias, name="materias"),
    url(r'^materia_eval/$', views.materia_eval, name="materia_eval"),
]