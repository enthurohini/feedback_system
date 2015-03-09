from django.conf.urls import patterns, url

from feedback_form import views

urlpatterns = patterns('',
		url(r'^$', views.index, name = 'index'),
		url(r'^action/$', views.action, name = 'action'),
		url(r'^login/$', views.login, name = 'login'),
		url(r'^infrastructure_support/$', views.infrastructure_support, name = 'infrastructure_support'),
		url(r'^infrastructure_action/$', views.infrastructure_action, name = 'infrastructure_action'),
		url(r'^academic_assessment/$', views.academic_assessment, name = 'academic_assessment'),
		url(r'^academic_action/$', views.academic_action, name = 'academic_action'),
		url(r'^thankyou/$', views.thanks, name = 'thanks'),
		url(r'^ajax_color_request/$', views.ajax_color_request),
		url(r'^login/login/get_batch/(?P<c_id>\w+)/$', views.get_batch, name = 'get_batch'),
		url(r'^get_faculty_name/(?P<sub_name>\s+)/$', views.get_faculty_name, name = 'get_faculty_name'),
	)







