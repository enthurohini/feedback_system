''' ~~~ Import Statements ~~~ '''
from django import forms                                       # importing Django's forms library
from feedback_form.models import course, batch, section_info   # importing models of feedback_form app

''' ~~~ Defining a Form class as liginForm ~~~ '''
class loginForm(forms.Form):

	''' ~~~ Query for fetching all available course and provivding them as choices ~~~ '''
	available_courses = course.objects.values_list('course_name', flat = True)
	course_choices = [('', '----------')] + [(id, id) for id in available_courses]

	''' ~~~ Query for fetching available sections and provivding them as choices ~~~ '''
	section_choices = [('0', '-----')]

	''' ~~~ providing initial semester choices else will be fetched through ajax ~~~ '''
	sem_choices = [('0', '-----')]

	''' ~~~ loginForm fields ~~~ '''
	programme = forms.ChoiceField(course_choices,required=True, widget=forms.Select(attrs={'required':'required'}))
	semester = forms.ChoiceField(sem_choices,required=True, widget=forms.Select(attrs={'required':'required'}))
	section = forms.ChoiceField(section_choices, required= False, widget=forms.Select(attrs={'required':'required'}))
	batch = forms.ChoiceField(sem_choices,required=True, widget=forms.Select(attrs={'required':'required'}))
	

class Meta:
        model = batch, course
        fields = ('course_name', 'batch', 'semester')

