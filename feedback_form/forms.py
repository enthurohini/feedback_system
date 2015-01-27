from django import forms
from feedback_form.models import course, batch, section_info

class loginForm(forms.Form):
	course_name = forms.ModelChoiceField(queryset=course.objects.values_list('course_name', flat = True))
	semester = forms.ModelChoiceField(queryset=course.objects.values_list('number_of_sem', flat = True))
	section = forms.ModelChoiceField(queryset=section_info.objects.values_list('section', flat = True).distinct())
	batch = forms.ModelChoiceField(queryset=batch.objects.none())
	feedback_session = forms.IntegerField()

class Meta:
        model = batch
        fields = ('course_name', 'batch')

#class infrastructure_form():