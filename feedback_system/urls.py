from django.conf.urls import patterns, include, url
from django.contrib import admin

urlpatterns = patterns('',
    # Examples:
    #url(r'^$', 'feedback_system.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'', include('feedback_form.urls')),
    url(r'^iips_registration/', include('student_registration.urls')),
    url(r'^admin/', include(admin.site.urls)),
)
