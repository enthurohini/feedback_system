from django.shortcuts import render, get_object_or_404, render_to_response
from feedback_form.models import feedback_student_info
from django.http import HttpResponse, HttpResponseRedirect
from django.core.urlresolvers import reverse

#import json as simplejson
import json
import feedback_form.models
#from django.template import RequestContext, loader

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
		q = feedback_student_info(batch_id = request.POST['batch_id'],course = request.POST['course'], semester = request.POST['semester'][:2], section = request.POST['section'], feedback_session = 2014)
		q.save()
	else:
		message = 'You submitted an empty form.'
	return HttpResponse(message)

def login(request):
	if request.method == 'POST' and request.is_ajax:
		form = loginForm(request.POST)
		if form.is_valid():
			return HttpResponseRedirect('/feedback_system/thankyou/')
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
    batch_dict = {}
    for batch in batches:
        batch_dict[batch.batch_id] = batch.batch_id
    return HttpResponse(json.dumps(batch_dict), mimetype="application/json")

    #, mimetype="application/json"
