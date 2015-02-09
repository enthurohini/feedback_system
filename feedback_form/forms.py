from django import forms
from feedback_form.models import course, batch, section_info

class loginForm(forms.Form):
	iquery1 = course.objects.values_list('course_name', flat = True)
	iquery1_choices = [('', '----------')] + [(id, id) for id in iquery1]

	section_query = section_info.objects.values_list('section', flat = True).distinct()
	section_choices = [('', '-------')] + [(id, id) for id in section_query]

	sem_choices = [('0', '-----')]

	course_name = forms.ChoiceField(iquery1_choices,required=True, widget=forms.Select())
	#course_name = forms.ModelChoiceField(queryset=course.objects.values_list('course_name', flat = True))
	semester = forms.ChoiceField(sem_choices,required=True, widget=forms.Select())
	#semester = forms.CharField()
	#semester = forms.ModelChoiceField(queryset=course.objects.none())
	section = forms.ChoiceField(section_choices, required= False, widget=forms.Select())
	#section = forms.ModelChoiceField(queryset=section_info.objects.values_list('section', flat = True).distinct())
	batch = forms.ChoiceField(sem_choices,required=True, widget=forms.Select())
	#feedback_session = forms.IntegerField()

class Meta:
        model = batch, course
        fields = ('course_name', 'batch', 'semester')

