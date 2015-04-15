from django.conf.urls import patterns, url

from student_registration import views

urlpatterns = patterns('',
	url(r'^$', views.student_personal_info, name = 'student_personal_info'),
    url(r'^academic_info/$', views.student_academic_info_view, name = 'student_academic_info'),
     )
