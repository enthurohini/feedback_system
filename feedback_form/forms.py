''' ~~~ Import Statements ~~~ '''
from django import forms                                       # importing Django's forms library
from feedback_form.models import course, batch, section_info   # importing models of feedback_form app
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, Field ,Fieldset
from crispy_forms.bootstrap import (
    PrependedText, PrependedAppendedText, FormActions)

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

class student_personal_infoForm(forms.Form):
	''' title = forms.CharField(_("Registration Form"))'''
	CATEGORY = ('GENERAL','OBC','ST','SC')

	first_name = forms.CharField(label="First Name",required=True,max_length=20, widget = forms.TextInput(attrs={'placeholder':'First Name'}))
	middle_name = forms.CharField(label="Middle Name", required=False,max_length=20, widget = forms.TextInput(attrs={'placeholder':'Middle Name'}))
	last_name= forms.CharField(label="Last Name", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Last Name'}))
	father_name = forms.CharField(label="Father's Name", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Father Name'}))
	mother_name = forms.CharField(label="Mother's Name", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Mother Name'}))
	birth_date = forms.CharField(label="Birth date", required=True,widget = forms.TextInput(attrs={'placeholder':'Birth Date'}))
	gender = forms.ChoiceField(label="Gender", required=True,widget =forms.RadioSelect,choices=(('male','Male'),('female','Female')))
	category = forms.CharField(label="Category", required=True)
	mobile_number= forms.CharField(label="Mobile Number",max_length=10, required=True)
	telephone_number = forms.CharField(label="Telephone Number", max_length=10,required=True)
	email= forms.CharField(label="Email", required=True)
	current_address= forms.CharField(max_length=50,required=True)
	permanent_address= forms.CharField(max_length=50,required=True)

	helper = FormHelper()
	helper.form_method = 'POST'
	helper.form_class = 'form_horizontal'
	helper.form_class = 'row'
	helper.label_class = 'col-sm-2'
	helper.form_class = 'row'
	helper.field_class = 'col-sm-2'
	helper.layout = Layout(
	    
        Field('first_name', css_class='input-md'),
        Field('middle_name', css_class='input-md'),
        Field('last_name', css_class='input-md'),
        Field('father_name', css_class='input-md ,col-sm-offset-6'),
        Field('mother_name', css_class='input-md'),
        Field('birth_date', css_class='input-md'),
        Field('gender', css_class='input-md'),
        Field('category', css_class='input-md'),
        PrependedAppendedText('mobile_number', '+91',),        
        Field('telephone_number', css_class='input-md'),
        Field('email', css_class='input-md'),
        Field('current_address', css_class='input-lg'),
        Field('permanent_address', css_class='input-lg'),
    
        FormActions(Submit('Submit', 'Submit', css_class='btn-primary'))
        )
	
    
   

 	