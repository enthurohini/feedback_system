# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0019_student_personal_info'),
    ]

    operations = [
        migrations.CreateModel(
            name='Student_academic_info',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('high_school_name', models.CharField(max_length=80)),
                ('high_school_passing_year', models.IntegerField(max_length=5)),
                ('higher_secondary_school_name', models.CharField(max_length=80)),
                ('higher_secondary_school_year', models.IntegerField(max_length=5)),
                ('enrollment_no', models.CharField(max_length=20)),
                ('enrollment_year', models.IntegerField(max_length=5)),
                ('roll_number', models.CharField(max_length=20)),
                ('course', models.CharField(max_length=10)),
                ('semester', models.IntegerField(max_length=2)),
                ('section', models.CharField(max_length=1, blank=True)),
                ('alternate_email', models.EmailField(max_length=254, blank=True)),
                ('student_no', models.ForeignKey(to='feedback_form.Student_personal_info')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
