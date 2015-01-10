from django.contrib import admin
from feedback_form.models import feedback_student_info, infrastructure_support_info

# Register your models here.

admin.site.register(feedback_student_info)
admin.site.register(infrastructure_support_info)
