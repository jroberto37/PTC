from django.conf.urls import url
from . import views

urlpatterns = [
    url(r'^$', views.index, name="index"),
    url(r'^valusu/$', views.valusu, name="valusu"),
    url(r'^expediente/$', views.expediente, name="expediente"),
]