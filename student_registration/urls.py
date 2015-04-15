from django.conf.urls import patterns, url

from student_registration import views

urlpatterns = patterns('',
	url(r'^$', views.student_personal_info, name = 'student_personal_info'),
    url(r'^student_academic_info/$', views.student_academic_info, name = 'student_academic_info'),
     )
