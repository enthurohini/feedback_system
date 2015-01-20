from django import forms
from feedback_form.models import course

class loginForm(forms.Form):
	course = forms.ModelChoiceField(queryset=course.objects.all())
	semester = forms.IntegerField()
	section = forms.CharField(max_length=100)
	batch_id = forms.CharField(max_length=100)
	feedback_session = forms.IntegerField()
