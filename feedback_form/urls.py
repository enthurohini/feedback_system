from django.conf.urls import patterns, url

from feedback_form import views

urlpatterns = patterns('', 
		url(r'^$', views.index, name = 'index'),
	)