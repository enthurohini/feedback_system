from django.shortcuts import render, get_object_or_404, render_to_response
from feedback_form.models import feedback_student_info
from django.http import HttpResponse, HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.utils import timezone
from django import forms
from feedback_form.models import course, batch, section_info, Question, infrastructure_support_info, feedback_student_info, subject, faculty_table, time_table, academic_assessment_info
import json
import feedback_form.models
from django.core import serializers
from django.template import RequestContext, loader, context

from feedback_form.forms import loginForm,student_personal_infoForm
from feedback_form.models import feedback_student_info
from django.template.response import TemplateResponse

# Create your views here.
def index(request):
	return render(request, 'feedback_form/index.html')

def action(request):
	if ('course' and 'semester' and 'course_id' and 'batch_id' and 'section') in request.POST:
		message = "Your submitted entry is: %s , %s, %s, %s, %s" % (request.POST['course'], request.POST['semester'], request.POST['course_id'], request.POST['batch_id'], request.POST['section'])
		q = feedback_student_info(batch_id = request.POST['batch_id'],course = request.POST['course'], semester = request.POST['semester'][:2], section = request.POST['section'], feedback_session = timezone.now().year)
		q.save()

	else:
		message = 'You submitted an empty form.'

	return HttpResponse(message)

def login(request):
	if request.method == 'POST' and request.is_ajax:
		form = loginForm(request.POST)
		sem = request.POST.get('semester')
		form.fields['semester'].choices = [(sem, sem)]
		b = request.POST.get('batch')
		form.fields['batch'].choices = [(b, b)]
		s = request.POST.get('section')
		form.fields['section'].choices = [(s, s)]
        
		if form.is_valid():
			#message = "Your submitted entry is: %s , %s, %s, %s, %s" % (request.POST['course_name'], request.POST['semester'], request.POST['section'], request.POST['batch'], request.POST['section'])
			q = feedback_student_info(batch_id = request.POST['batch'],course = request.POST['programme'], semester = request.POST['semester'], section = request.POST['section'], feedback_session = timezone.now().year)
			q.save()

			''' --- sessions of the variables are maintained here --- '''
			request.session['fs_id'] = q.fs_id
			request.session['course_name'] = q.course
			request.session['semester'] = q.semester
			if (request.POST['section'] == '0'):
				request.session['section'] = ''
			else:
				request.session['section'] = q.section
			request.session['course_id'] = q.batch_id[:2]
			request.session['batch_id'] = q.batch_id
			
			#return HttpResponse(request.session['section'])
			return HttpResponseRedirect('/feedback_system/infrastructure_support/')
	else:
		form = loginForm()

	return render(request, 'feedback_form/loginForm.html', {'form': form})

def thanks(request):
	del request.session['fs_id']
	del request.session['course_name']
	del request.session['semester']
	del request.session['section']
	del request.session['course_id']
	del request.session['batch_id']

	return render(request, 'feedback_form/thankyou.html')

def ajax_color_request(request):
    # Expect an auto 'type' to be passed in via Ajax and POST
    if request.is_ajax() and request.method == 'POST':
        course_course_name = course.objects.filter(name=request.POST.get('course_name', ''))
        c_id = course.objects.raw('SELECT course_id FROM course WHERE course_name = %s', [course_course_name])
        batch_id = batch.objects.raw('SELECT batch_id FROM batch WHERE course_id = %s', [c_id]) # get all the colors for this type of auto.
    return render_to_response('feedback_form/loginForm.html', locals())

def get_batch(request, c_id):
    current_course = feedback_form.models.course.objects.get(course_name=c_id)
    batches = feedback_form.models.batch.objects.all().filter(course_id=current_course)
    no_of_sem = feedback_form.models.course.objects.values_list('number_of_sem', flat=True).filter(course_id = current_course)
    no_of_sem = int(no_of_sem[0])

    batch_dict = {}
    for batch in batches:
        batch_dict[batch.batch_id] = batch.batch_id

    sem = {}
    sem[no_of_sem] = no_of_sem
    data = [batch_dict, no_of_sem]

    return HttpResponse(json.dumps(data))

def get_section(request, current_batch):
	batches_with_section = section_info.objects.values_list('batch_id', flat = True)
	section_list = []
	if current_batch in batches_with_section:
    	 available_section = section_info.objects.filter(batch_id = current_batch)
    	 for i in available_section:
    	 	section_list.append(i.section)

	return HttpResponse(json.dumps(section_list))

def infrastructure_support(request):
	infrastructure_qlist = Question.objects.filter(type = 'infrastructure support')
	std_id = request.session['fs_id']
	context = {'infrastructure_qlist':infrastructure_qlist, 'std_id':std_id}
	
	return render(request, 'feedback_form/infrastructure_support_info.html', context)

def infrastructure_action(request):
	if ('1' and '2' and '3' and '4' and '5' and '6') in request.POST:	

		''' --- fetching the session variables --- '''
		if 'fs_id' in request.session:
			std_id = request.session['fs_id']

			message = "Your submitted entry is: %s , %s, %s, %s, %s, %s" % (int(request.POST['1']), request.POST['2'], request.POST['3'], request.POST['4'], request.POST['5'], request.POST['6'])
			q = feedback_student_info.objects.get(pk=std_id)
			q.infrastructure_support_info_set.create(books_availability=request.POST['1'], basic_requirements=request.POST['2'], technological_support=request.POST['3'], study_material=request.POST['4'], resourse_availability=request.POST['5'], cleaniliness_of_class=request.POST['6'])

			return HttpResponseRedirect('/feedback_system/academic_assessment/')
			
		else:
			return HttpResponse('You submitted an empty form.')
	
def academic_assessment(request):

	''' fetching the data from the session variables '''
	courseId = request.session['course_id']
	sem = request.session['semester']
	batch = request.session['batch_id']
	section = request.session['section']
	std_id = request.session['fs_id']

	''' --- query to fetch data from the model ---'''
	#subject_list = subject.objects.filter(course_id = courseId, semester = sem, is_viva_or_lab = 0)
	subject_list = subject.objects.filter(course_id = courseId, semester = sem, is_viva_or_lab = 0).exclude(pk__in=academic_assessment_info.objects.values_list('subject_id', flat = True).filter(fs_id = std_id))

	
	filled_subject_list = academic_assessment_info.objects.values_list('subject_id', flat = True).filter(fs_id = std_id)

	faculty_id_list = time_table.objects.values_list('faculty_id', flat = True).filter(batch_id = batch, section = section)
	faculty_name_list = []
	for f in faculty_id_list:
		faculty_name_list.append(faculty_table.objects.filter(user_id = f))
	faculty_qlist = Question.objects.filter(type = 'faculty assesment')
	course_qlist = Question.objects.filter(type = 'course assessment')
	comment = Question.objects.filter(type = 'subject comment')

	''' ----- maintaining session of subject_list into dictionary ----- '''
	#subject_list_session = serializers.serialize('json', list(subject_list), fields =('name_of_subject'))
	subject_list_session = {}
	#for s in subject_list:
	#	subject_list_session[s.subject_id] = s.name_of_subject 
	#request.session['subject_list_session'] = subject_list_session
	request.session['total_subject'] = len(subject_list)

	context = {'subject_list': subject_list, 'faculty_qlist': faculty_qlist, 'faculty_name_list': faculty_name_list, 'course_qlist': course_qlist, 'comment': comment, 'std_id':std_id}
	
	return render(request, 'feedback_form/academic_assessment_info.html', context)
	#return HttpResponse(no_subject)

def academic_action(request):

	''' ~~~~~~~~~~ Accessing the session elements ~~~~~~~~~~~ '''
	#s_list = request.session['subject_list_session']
	no_of_subject = request.session['total_subject']
	#for s in s_list:
	#return HttpResponse(no_of_subject)
	''' ~~~~~~~~~~~ Fetching faculty_id using faculty_name in request.POST ~~~~~~~~~~~ '''
	faculty_id = faculty_table.objects.values_list('user_id', flat = True).filter(name = request.POST['faculty'])
	current_faculty_id = int(faculty_id[0])
	#return HttpResponse(current_faculty_id)
	

	if ('subject' and '7' and '8' and '9' and '10' and '11' and '12' and '13' and '14' and '15' and '16' and 'comment1' and '18' and '19' and 'comment2') in request.POST:
		if 'fs_id' in request.session:
			std_id = request.session['fs_id']
		a = feedback_student_info.objects.get(pk=std_id)
		a.academic_assessment_info_set.create(subject_id = request.POST['subject'], faculty_id = current_faculty_id, conceptual_clarity = request.POST['7'], subject_knowledge = request.POST['8'], practical_example = request.POST['9'], handling_capability = request.POST['10'], motivation = request.POST['11'], control_ability = request.POST['12'], course_completion = request.POST['13'], communication_skill = request.POST['14'], regularity_punctuality = request.POST['15'], outside_guidance = request.POST['16'], syllabus_industry_relevance = request.POST['18'], sufficiency_of_course = request.POST['19'], suggestion_for_subject = request.POST['comment1'], suggestion_for_course = request.POST['comment2'])
		
		if no_of_subject == 1:
			return HttpResponseRedirect('/feedback_system/thankyou/')
		else:
			return HttpResponseRedirect('/feedback_system/academic_assessment/')

	else:
		return HttpResponse('You submitted an empty form.') 

def get_faculty_name(request, sub_name):
	current_course_id = request.session['course_id']
	current_section = request.session['section']

	if current_section == '0':
		current_section = ''
	#current_subject_id = subject.objects.values_list('subject_id', flat = True).filter(name_of_subject = sub_name, course_id = current_course_id)
	current_faculty_id = time_table.objects.values_list('faculty_id', flat = True).filter(subject_id = sub_name, section = current_section)
	faculty_name = faculty_table.objects.filter(user_id = current_faculty_id)
	data = []
	for f in faculty_name:
		data = [f.name]
	
	return HttpResponse(json.dumps(data))

def resume_action(request):
	if 'fs_id' in request.POST:
		is_present = feedback_student_info.objects.filter(pk = request.POST['fs_id'])
		if (len(is_present) > 0 ):	
			query_value = feedback_student_info.objects.get(pk = request.POST['fs_id'])

			request.session['fs_id'] = query_value.fs_id
			request.session['course_name'] = query_value.course
			request.session['semester'] = query_value.semester
			request.session['section'] = query_value.section
			request.session['course_id'] = query_value.batch_id[:2]
			request.session['batch_id'] = query_value.batch_id

			infrastructure_presence = infrastructure_support_info.objects.filter(fs_id = is_present)
			if (len(infrastructure_presence) > 0 ):
				''' fetching the data from the session variables '''
				courseId = request.session['course_id']
				sem = request.session['semester']
				batch = request.session['batch_id']
				std_id = request.session['fs_id']
				subject_list = subject.objects.filter(course_id = courseId, semester = sem, is_viva_or_lab = 0).exclude(pk__in=academic_assessment_info.objects.values_list('subject_id', flat = True).filter(fs_id = std_id))
				if len(subject_list) == 0:
					return HttpResponse("Your feedback form has been submitted successfully.")
				else:
					return HttpResponseRedirect('/feedback_system/academic_assessment/')
			else:
				return HttpResponseRedirect('/feedback_system/infrastructure_support/')
		else:
			return HttpResponse("Oops! You are not a Existing User. Please <a href='../login' > <b>CLICK</b> </a> here to proivide your valuable feedback.")
    
def student_personal_info(request):
	return TemplateResponse(request, 'feedback_form/student_personal_info.html',{'form': student_personal_infoForm()})
