from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django import forms
from django.template.response import TemplateResponse
from django.http import Http404

from student_registration.forms import student_personal_infoForm
from student_registration.forms import student_academic_infoForm
from student_registration.models import *

# Create your views here.
def student_personal_info(request):
	if request.method == 'GET':
		return TemplateResponse(request, 'feedback_form/student_personal_info.html',{'form': student_personal_infoForm()})
	else:
		
		form = student_personal_infoForm(request.POST)
		
		if form.is_valid():
			''' Maintaining session of variables '''
			request.session['first_name'] = request.POST['first_name']
			request.session['middle_name'] = request.POST['middle_name']
			request.session['last_name'] = request.POST['last_name']
			request.session['father_name'] = request.POST['father_name']
			request.session['mother_name'] = request.POST['mother_name']
			request.session['birth_date'] = request.POST['birth_date']
			request.session['gender'] = request.POST['gender']
			request.session['category'] = request.POST['category']
			request.session['mobile_number'] = request.POST['mobile_number']
			request.session['telephone_number'] = request.POST['telephone_number']
			request.session['email'] = request.POST['email']
			request.session['current_address'] = request.POST['current_address']
			request.session['permanent_address'] = request.POST['permanent_address']

			return HttpResponseRedirect('/iips_registration/academic_info')
		else:
			#return HttpResponse(request.POST['first_name'])
			''' Do something in case if form is not valid '''
            	raise Http404
			#return HttpResponse("invalid")

def student_academic_info_view(request):
	if request.method == 'GET':
		return TemplateResponse(request, 'student_registration/student_academic_info.html',{'form': student_academic_infoForm()})
	else:
		
		form = student_academic_infoForm(request.POST)
		#return HttpResponse(request.session['last_name'])
		
		if form.is_valid():
			#return HttpResponse('Good')
			q = Student_personal_info(first_name = request.session['first_name'], mid_name = request.session['middle_name'], last_name = request.session['last_name'], father_name = request.session['father_name'], mother_name = request.session['mother_name'], birth_date = request.session['birth_date'], gender = request.session['gender'], category = request.session['category'], mobile_no = request.session['mobile_number'], telephone_no = request.session['telephone_number'], email_id = request.session['email'], current_address = request.session['current_address'], permanent_address = request.session['permanent_address'], type = 'student', status = '1')
			q.save()
			student = Student_personal_info.objects.get(pk = q.student_no)
			student.student_academic_info_set.create(high_school_name = request.POST['high_school_name'], high_school_passing_year = request.POST['passing_year'], higher_secondary_school_name = request.POST['higher_secondary_school_name'], higher_secondary_school_year= request.POST['year_of_passing_secondary_school'], enrollment_no = request.POST['enrollment_number'], enrollment_year = request.POST['enrollment_year'], roll_number = request.POST['roll_number'], course = request.POST['course'], semester = request.POST['sem'], section = request.POST['section'], alternate_email = request.POST['alternate_email'])
			return HttpResponse("<b><h1 align=center>Thank You for Registration with IIPS<h1></b>")
		else:
			#return HttpResponse(request.POST['first_name'])
			#return HttpResponse("invalid")
			''' Do something in case if form is not valid '''
            	raise Http404
