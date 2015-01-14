from django.contrib import admin
from feedback_form.models import feedback_student_info, infrastructure_support_info, academic_assessment_info, course, batch, section_info, faculty_table, subject, time_table

# Register your models here.
class infrastructureInline(admin.StackedInline):
	model = infrastructure_support_info
	extra = 1

class academicInline(admin.StackedInline):
	model = academic_assessment_info
	extra = 1

class studentAdmin(admin.ModelAdmin):
	fieldsets = [
		('Student related information', {'fields': ['batch_id', 'course', 'semester', 'section', 'feedback_session'], 'classes': ['collapse']})
		#(None, {'fields': ['books_availability']})
	]
	inlines = [infrastructureInline, academicInline]

admin.site.register(feedback_student_info, studentAdmin)
#admin.site.register(infrastructure_support_info)
#admin.site.register(academic_assessment_info)
admin.site.register(course)
admin.site.register(batch)
admin.site.register(section_info)
admin.site.register(faculty_table)
admin.site.register(subject)
admin.site.register(time_table)

