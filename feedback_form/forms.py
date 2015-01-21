from django import forms
from feedback_form.models import course, batch

class loginForm(forms.Form):
	course = forms.ModelChoiceField(queryset=course.objects.values_list('course_name', flat = True))
	semester = forms.CharField(max_length=100) 
	section = forms.CharField(max_length=100)
	batch_id = forms.ModelChoiceField(queryset=batch.objects.distinct())
	feedback_session = forms.IntegerField()
