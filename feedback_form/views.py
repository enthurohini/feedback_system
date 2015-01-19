from django.shortcuts import render, get_object_or_404
from feedback_form.models import feedback_student_info
from django.http import HttpResponse, HttpResponseRedirect
from django.core.urlresolvers import reverse
#from django.template import RequestContext, loader

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

