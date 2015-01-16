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
	try:
		p = get_object_or_404(feedback_student_info)
	
	return render(request, 'feedback_form/index.html')
