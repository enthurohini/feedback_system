from django.shortcuts import render, get_object_or_404, render_to_response
from feedback_form.models import feedback_student_info
from django.http import HttpResponse, HttpResponseRedirect
from django.core.urlresolvers import reverse
from django.utils import timezone
#import datetime
from django import forms
from feedback_form.models import course, batch, section_info, Question, infrastructure_support_info
#import json as simplejson
import json
import feedback_form.models
from django.template import RequestContext, loader, context

from feedback_form.forms import loginForm
from feedback_form.models import feedback_student_info

# Create your views here.
def index(request):
	#return HttpResponse("Hello")
	#template = loader.get_template('feedback_form/index.html')
	#return HttpResponse(template.render)
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
        #semester = forms.ChoiceField([(sem,sem)],required=True, widget=forms.Select())
		if form.is_valid():
			message = "Your submitted entry is: %s , %s, %s, %s, %s" % (request.POST['course_name'], request.POST['semester'], request.POST['section'], request.POST['batch'], request.POST['section'])
			q = feedback_student_info(batch_id = request.POST['batch'],course = request.POST['course_name'], semester = request.POST['semester'], section = request.POST['section'], feedback_session = 2014)
			q.save()
			return HttpResponse(message)
			#return HttpResponseRedirect('/feedback_system/thankyou/')
	else:
		form = loginForm()

	return render(request, 'feedback_form/loginForm.html', {'form': form})

def thanks(request):
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
    #return HttpResponse(json.dumps(batch_dict))
    #return HttpResponse(json.dumps(sem))

def infrastructure_support(request):
	infrastructure_qlist = Question.objects.filter(type = 'infrastructure support')
	context = {'infrastructure_qlist':infrastructure_qlist}
	if request.method == 'POST':
		#form = infrastructure_support_info(request.POST)
		#if form.is_valid():
			#message = "Your submitted entry is: %s , %s, %s, %s, %s" % (request.POST['1'], request.POST['2'], request.POST['3'], request.POST['4'], request.POST['5'], request.POST['6'])
			q = infrastructure_support_info(books_availability = int(request.POST['1']),basic_requirements = int(request.POST['2']), technological_support = int(request.POST['3']), study_material = int(request.POST['4']), resourse_availability = int(request.POST['5']), cleaniliness_of_class = int(request.POST['6']), fs_id = 12)
			q.save()
			#return HttpResponse(message)
			#return HttpResponseRedirect('/feedback_system/thankyou/')
	else:
		form = loginForm()
	return render(request, 'feedback_form/infrastructure_support_info.html', context)

