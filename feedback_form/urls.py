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
		url(r'^login/login/get_section/(?P<current_batch>\S+)/$', views.get_section, name = 'get_section'),
		url(r'^academic_assessment/academic_assessment/get_faculty_name/(?P<sub_name>\S+)/$', views.get_faculty_name, name = 'get_faculty_name'),
		url(r'^resume_action/$', views.resume_action, name = 'resume_action'),
		#url(r'^student_personal_info/$', views.student_personal_info, name = 'student_personal_info'),
	)






