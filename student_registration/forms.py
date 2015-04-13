''' ~~~ Import Statements ~~~ '''
from django import forms 
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, Field ,Fieldset,Div,Row
from crispy_forms.bootstrap import (PrependedText, PrependedAppendedText,InlineField, FormActions)


class student_personal_infoForm(forms.Form):

	''' title = forms.CharField(_("Registration Form"))'''
	CATEGORY = ('GENERAL','OBC','ST','SC')

	first_name = forms.CharField(label="First Name",required=True,max_length=20, widget = forms.TextInput(attrs={'placeholder':'First Name'}))
	middle_name = forms.CharField(label="",required=False,max_length=20, widget = forms.TextInput(attrs={'placeholder':'Middle Name'}))
	last_name= forms.CharField(label="", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Last Name'}))
	
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
	helper.label_class = 'col-md-4'
	helper.form_class = 'form-inline'
	helper.field_class = 'col-md-4 control-label'
	helper.layout = Layout(
  Div(
	    Row(  
            Field('first_name',css_class='control-label'),
            Field('middle_name',css_class='control-label'),
            Field('last_name',css_class='control-label'),
            css_class='row-fluid divs panel',css_id="row1")
      ),
  Div(
        Row(
            Field('father_name', css_class='control-label'),
            Field('mother_name', css_class='control-label'),
        css_class='row-fluid divs panel')
        ), 
  Div( 
           Field('birth_date', css_class='control-label'),
           css_class='row-fluid divs panel'
    ),
       Row(
           Field('gender', css_class='control-label'),
           Field('category', css_class='input-md'),
        css_class='row-fluid divs panel',css_id="row1"),
  Div(
          PrependedAppendedText('mobile_number', '+91',),
          css_class='row-fluid divs panel col-md-6' 
          ), 
  Div(
          Field('telephone_number', css_class='input-md'),
          css_class='row-fluid divs panel col-md-6'
       ),

  Div(
      Row(
    	Field('email', css_class='input-md'),
      css_class='row-fluid divs panel ',css_id="row1")
       ),
  Div(   	
        Field('current_address', css_class='input-lg'),
        css_class='row-fluid divs panel',css_id="row1"
       ),
  Div(
        Field('permanent_address', css_class='input-lg'),
        css_class='row-fluid divs panel',css_id="row1"),
   
    FormActions(Submit('Submit', 'Submit', css_class='btn-primary'))
    )
 
	
    
