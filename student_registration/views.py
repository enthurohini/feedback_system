from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django import forms
from django.template.response import TemplateResponse

from student_registration.forms import student_personal_infoForm
from student_registration.models import *

# Create your views here.
def student_personal_info(request):
	if request.method == 'GET':
		return TemplateResponse(request, 'feedback_form/student_personal_info.html',{'form': student_personal_infoForm()})
	else:
		
		form = student_personal_infoForm(request.POST)
		
		if form.is_valid():
			return HttpResponse(request.POST['first_name'])
		else:
			#return HttpResponse(request.POST['first_name'])
			return HttpResponse("invalid")
