from django.conf.urls import patterns, url

from feedback_form import views

urlpatterns = patterns('',
		url(r'^$', views.index, name = 'index'),
		url(r'^action/$', views.action, name = 'action'),
		url(r'^login/$', views.login, name = 'login'),
		url(r'^thankyou/$', views.thanks, name = 'thanks'),
		url(r'^ajax_color_request/$', views.ajax_color_request),
		url(r'^login/login/get_batch/(?P<c_id>\w+)/$', views.get_batch, name = 'get_batch'),
		url(r'^login/login/get_no_of_sem/(?P<c_id>\w)/$', views.get_no_of_semester, name = 'get_no_of_sem'),
	)







