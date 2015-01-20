from django import forms

class loginForm(forms.Form):
	course = forms.CharField(max_length=100)
	semester = forms.IntegerField()
	section = forms.CharField(max_length=100)
	batch_id = forms.CharField(max_length=100)
	feedback_session = forms.IntegerField()
