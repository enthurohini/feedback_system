from django.db import models

# Create your models here.


class feedback_student_info(models.Model):
	fs_id = models.AutoField(primary_key=True)
	batch_id = models.CharField(max_length = 20)
	course = models.CharField(max_length = 10)
	semester = models.IntegerField(max_length =2)
	section = models.CharField(max_length = 1, blank = True)
	feedback_session = models.IntegerField(max_length = 4)
	
	def __unicode__(self):              # __str__ on Python 3
        	return str(self.fs_id)

class infrastructure_support_info(models.Model):
	fs_id = models.ForeignKey(feedback_student_info)
	books_availability = models.IntegerField(max_length = 1)
	basic_requirements = models.IntegerField(max_length = 1)
	technological_support = models.IntegerField(max_length = 1)
	study_material = models.IntegerField(max_length = 1)
	resourse_availability = models.IntegerField(max_length = 1)
	cleaniliness_of_class = models.IntegerField(max_length = 1)

	def __unicode__(self):              # __unicode__ on Python 2
        	return str(self.fs_id)
        	
class academic_assessment_info(models.Model):
	fs_id = models.ForeignKey(feedback_student_info)
	subject_id = models.CharField(max_length = 20)
	faculty_id = models.CharField(max_length = 20)
	conceptual_clarity = models.IntegerField(max_length = 1)
	subject_knowledge = models.IntegerField(max_length = 1)
	practical_example = models.IntegerField(max_length = 1)
	handling_capability = models.IntegerField(max_length = 1)
	motivation = models.IntegerField(max_length = 1)
	control_ability = models.IntegerField(max_length = 1)
	course_completion = models.IntegerField(max_length = 1)
	communication_skill = models.IntegerField(max_length = 1)
	regularity_punctuality = models.IntegerField(max_length = 1)
	outside_guidance = models.IntegerField(max_length = 1)
	syllabus_industry_relevance = models.IntegerField(max_length = 1)
	sufficiency_of_course = models.IntegerField(max_length = 1)
	suggestion_for_subject = models.CharField(max_length = 80000, blank = True)
	suggestion_for_course = models.CharField(max_length = 80000, blank = True)
	
	def __unicode__(self):
		return str(self.fs_id)

class course(models.Model):
	course_id = models.CharField(primary_key = True, max_length = 2)
	course_name = models.CharField(max_length = 20)
	stream = models.CharField(max_length = 15)
	number_of_sem = models.IntegerField(max_length = 2)
	
	def __unicode__(self):
		return self.course_id

	#def sem(self):
	#	return self.course_name

class batch(models.Model):
	batch_id = models.CharField(primary_key = True, max_length = 20)
	course_id = models.ForeignKey(course)
	session = models.IntegerField("Year of the batch", max_length = 10)

	def __unicode__(self):
		return self.batch_id

class section_info(models.Model):
	batch_id = models.ForeignKey(batch)
	section = models.CharField(max_length = 5)

	def __unicode__(self):
		return str(self.batch_id)

class faculty_table(models.Model):
	user_id = models.AutoField(primary_key = True, max_length = 20)
	name = models.CharField(max_length = 50)
	qualification = models.CharField(max_length = 50, blank = True)
	date_of_birth = models.DateField()
	email = models.EmailField(max_length = 100, blank = True)
	discipline = models.CharField(max_length = 20, blank = True)
	responsibility = models.CharField(max_length = 30, blank = True)
	designation = models.CharField(max_length = 50, blank = True)
	gender = models.CharField(max_length = 10)
	area_of_interest = models.CharField(max_length = 50, blank = True)
	contact_number = models.CharField(max_length = 20, blank = True)
	type = models.IntegerField(max_length = 1, default = 2)
	status = models.IntegerField(max_length = 1, default = 1)

	def __unicode__(self):
		return self.name

class subject(models.Model):
	subject_id = models.CharField(primary_key = True, max_length = 20)
	course_id = models.ForeignKey(course)
	name_of_subject = models.CharField(max_length = 50)
	semester = models.IntegerField(max_length = 2)
	credits = models.IntegerField(max_length = 2, default = 5)
	status = models.IntegerField(max_length = 1, default = 0)
	is_viva_or_lab = models.IntegerField(max_length = 1)

	def __unicode__(self):
		return self.name_of_subject

class time_table(models.Model):
	s_no = models.AutoField(primary_key = True)
	course_id = models.ForeignKey(course)
	subject_id = models.ForeignKey(subject)
	faculty_id = models.ForeignKey(faculty_table)
	batch_id = models.ForeignKey(batch)
	year = models.IntegerField(max_length = 10)
	section = models.CharField(max_length = 2, blank = True)
	day = models.CharField(max_length = 20, blank = True)
	time_from = models.TimeField(auto_now=False, auto_now_add=False)
	time_to = models.TimeField(auto_now=False, auto_now_add=False)
	room_number = models.CharField(max_length = 10)

	def __unicode__(self):
		return str(self.s_no)

		

