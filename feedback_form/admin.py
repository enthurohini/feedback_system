from django.contrib import admin
from feedback_form.models import feedback_student_info, infrastructure_support_info, academic_assessment_info, course, batch, section_info, faculty_table, subject, time_table, Question

# Register your models here.
class batchAdmine(admin.ModelAdmin):
	list_display = ('batch_id', 'course_id', 'session')

class sectionAdmin(admin.ModelAdmin):
	list_display = ('id','batch_id', 'section')	

class courseAdmin(admin.ModelAdmin):
	list_display = ('course_id', 'course_name', 'stream', 'number_of_sem')	

class facultyAdmin(admin.ModelAdmin):
	list_display = ('user_id', 'name')

class subjectAdmin(admin.ModelAdmin):
	list_display = ('subject_id', 'name_of_subject', 'semester')

class time_tableAdmin(admin.ModelAdmin):
	list_display = ('s_no', 'subject_id', 'faculty_id', 'batch_id', 'room_number')

class questionAdmin(admin.ModelAdmin):
	list_display = ('question_text', 'type')

class infrastructureInline(admin.TabularInline):
	model = infrastructure_support_info
	extra = 1

class academicInline(admin.TabularInline):
	model = academic_assessment_info
	extra = 1

class studentAdmin(admin.ModelAdmin):
	fieldsets = [
		('Student related information', {'fields': ['batch_id', 'course', 'semester', 'section', 'feedback_session'], 'classes': ['collapse']})
		#(None, {'fields': ['books_availability']})
	]
	inlines = [infrastructureInline, academicInline]
	list_display = ('fs_id', 'batch_id', 'course', 'semester', 'section', 'feedback_session')

admin.site.register(feedback_student_info, studentAdmin)
admin.site.register(course, courseAdmin)
admin.site.register(batch, batchAdmine)
admin.site.register(section_info, sectionAdmin)
admin.site.register(faculty_table, facultyAdmin)
admin.site.register(subject, subjectAdmin)
admin.site.register(time_table, time_tableAdmin)
admin.site.register(Question, questionAdmin)

