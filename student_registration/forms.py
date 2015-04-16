''' ~~~ Import Statements ~~~ '''
from django import forms 
from crispy_forms.helper import FormHelper
from crispy_forms.layout import Submit, Layout, Field ,Fieldset,Div,Row,Reset,Button
from crispy_forms.bootstrap import (PrependedText, PrependedAppendedText,InlineField, FormActions)


class student_personal_infoForm(forms.Form):

	''' title = forms.CharField(_("Registration Form"))'''
	CATEGORY_CHOICES = (
        (1, u'OBC'),
        (2, u'SC'),
        (3, u'ST'),   
    )

	first_name = forms.CharField(label="First Name",required=True,max_length=20, widget = forms.TextInput(attrs={'placeholder':'First Name'}))
	middle_name = forms.CharField(label="",required=False,max_length=20, widget = forms.TextInput(attrs={'placeholder':'Middle Name'}))
	last_name= forms.CharField(label="", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Last Name'}))
	
	father_name = forms.CharField(label="Father's Name", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Father Name'}))
	mother_name = forms.CharField(label="Mother's Name", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Mother Name'}))
	birth_date = forms.CharField(label="Birth Date", required=True,widget = forms.TextInput(attrs={'placeholder':'Birth Date'}))
	gender = forms.ChoiceField(label="Gender", required=True,choices=(('male','Male'),('female','Female')))
	category = forms.ChoiceField (label="Category", required=True,choices=CATEGORY_CHOICES)
	mobile_number= forms.CharField(label="Mobile Number",max_length=10, required=True)
	telephone_number = forms.CharField(label="Telephone Number", max_length=10,required=True)
	email= forms.CharField(label="Email", required=True)
	current_address= forms.CharField(label="Current Address",max_length=50,required=True)  
	permanent_address= forms.CharField(label="Permanent Address",max_length=50,required=True)
   

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
           Field('day', css_class='control-label'),
           Field('month', css_class='control-label'),
           css_class='row-fluid divs panel'
    ),
       Row(
           Field('gender', css_class='control-label'),
           Field('category', css_class='input-md'),
        css_class='row-fluid divs panel'),
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
      css_class='row-fluid divs panel  ')
       ),
  Div(   	
        Field('current_address', css_class='input-lg'),
        css_class='row-fluid divs col-md-4'
       ),
  Div(
        Field('permanent_address', css_class='input-lg'),
        css_class='row-fluid divs panel'),
   
    FormActions(Submit('Submit', 'Submit', css_class='btn-primary'),
       Reset('Reset','Reset',css_class='btn-danger'))
    )

'''defining a form class student academic form '''

class student_academic_infoForm(forms.Form):
  SEM_CHOICES =( (1,'semester'),(2,'1'),(3,'2'),(4,'3'),(5,'4'),(6,'5'),(7,'6'),(8,'7'),(9,'8'),(10,'9'),(11,'10'),(12,'11'),
    )


  high_school_name = forms.CharField(label="High School Name(10th)",required=True,max_length=20, widget = forms.TextInput(attrs={'placeholder':'Name of School'}))
  passing_year = forms.ChoiceField(label="Passing Year(10th)",required=True,choices=(('2010','2010'),('2011','2011')))
  higher_secondary_school_name= forms.CharField(label="Higher Sec. School Name(12th)", required=True,max_length=20,widget = forms.TextInput(attrs={'placeholder':'Name Of School'}))  
  year_of_passing_secondary_school = forms.ChoiceField(label="Passing Year(12th)", required=True,choices=(('2010','2010'),('2011','2011')))
  enrollment_number= forms.CharField(label="Enrollment Number", required=True,max_length=20)
  enrollment_year = forms.ChoiceField(label="Enrollment Year", required=True)
  roll_number = forms.CharField(label="Roll Number", required=True,widget = forms.TextInput(attrs={'placeholder':'Birth Date'}))
  course = forms.ChoiceField(label="Course", required=True,choices=(('Course','Course'),('M.C.A','M.C.A'),('M.Tech','M.Tech')))
  sem= forms.ChoiceField(label="Semester", required=True,choices=SEM_CHOICES)
  section = forms.ChoiceField(label="Section",required=True,choices=(('section','Section'),('A','A'),('B','B')))
  alternate_email= forms.CharField(label="Alternate Email", required=True,max_length=2011)

  helper = FormHelper()
  helper.form_method = 'POST'
  helper.label_class = 'col-md-4'
  helper.form_class = 'form-inline'
  helper.field_class = 'col-md-4 control-label'
  helper.layout = Layout(
  Div(
      Row(  
            Field('high_school_name',css_class='control-label'),            
            css_class='row-fluid divs panel')
      ),
  Div(
      Row(
           Field('passing_year', css_class='control-label'),
           css_class='row-fluid divs panel')
      ),
  Div(
      Row(
            Field('higher_secondary_school_name', css_class='control-label'),
            css_class='row-fluid divs panel')
        ), 
  Div(
      Row(
           Field('year_of_passing_secondary_school', css_class='control-label'),
           css_class='row-fluid divs panel')
  ),
   
  Div( 
           Field('enrollment_number', css_class='control-label'),
           css_class='row-fluid divs panel'
    ),
      Row(
           Field('enrollment_year', css_class='control-label'),
           ),
  
  Div(
          Field(' roll_number', css_class='input-md'),
          css_class='row-fluid divs panel '
       ),

  Div(
      Row(
          Field('course'),
          Field('sem'),
          Field('section'),
      css_class='row-fluid divs panel ')
       ),
  Div(
      Row(
          Field(' alternate_email', css_class='input-md'),
         )
       ),
   
    FormActions(Submit('Submit', 'Submit', css_class='btn-primary'),)
    )
 
   
	