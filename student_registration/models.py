from django.db import models

# Create your models here.
class Student_personal_info(models.Model):
	student_no = models.AutoField(primary_key = True)
	first_name = models.CharField(max_length = 50)
	mid_name = models.CharField(max_length = 50, blank = True)
	last_name = models.CharField(max_length = 50)
	father_name = models.CharField(max_length = 50)
	mother_name = models.CharField(max_length = 50)
	birth_date = models.DateField()
	gender = models.CharField(max_length = 8)
	category = models.CharField(max_length = 10)
	mobile_no = models.CharField(max_length = 12)
	telephone_no = models.CharField(max_length = 14, default = 0000)
	email_id = models.EmailField(max_length = 254)
	current_address = models.CharField(max_length = 100)
	permanent_address = models.CharField(max_length = 100)
	type = models.CharField(max_length = 8)
	status = models.IntegerField(max_length = 1)

	def __unicode__(self):
		return str(self.student_no)

class Student_academic_info(models.Model):
	student_no = models.ForeignKey(Student_personal_info)
	high_school_name = models.CharField(max_length = 80)
	high_school_passing_year = models.IntegerField(max_length = 5)
	higher_secondary_school_name = models.CharField(max_length = 80)
	higher_secondary_school_year = models.IntegerField(max_length = 5)
	enrollment_no = models.CharField(max_length = 20)
	enrollment_year = models.IntegerField(max_length = 5)
	roll_number = models.CharField(max_length = 20)
	course = models.CharField(max_length = 10)
	semester = models.IntegerField(max_length =2)
	section = models.CharField(max_length = 1, blank = True)
	alternate_email = models.EmailField(max_length = 254, blank = True)

	