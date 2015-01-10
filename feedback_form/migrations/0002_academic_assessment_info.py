# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='academic_assessment_info',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('subject_id', models.CharField(max_length=20)),
                ('faculty_id', models.CharField(max_length=20)),
                ('conceptual_clarity', models.IntegerField(max_length=1)),
                ('subject_knowledge', models.IntegerField(max_length=1)),
                ('practical_example', models.IntegerField(max_length=1)),
                ('handling_capability', models.IntegerField(max_length=1)),
                ('motivation', models.IntegerField(max_length=1)),
                ('control_ability', models.IntegerField(max_length=1)),
                ('course_completion', models.IntegerField(max_length=1)),
                ('communication_skill', models.IntegerField(max_length=1)),
                ('regularity_punctuality', models.IntegerField(max_length=1)),
                ('outside_guidance', models.IntegerField(max_length=1)),
                ('syllabus_industry_relevance', models.IntegerField(max_length=1)),
                ('sufficiency_of_course', models.IntegerField(max_length=1)),
                ('suggestion_for_subject', models.CharField(max_length=80000)),
                ('suggestion_for_course', models.CharField(max_length=80000)),
                ('fs_id', models.ForeignKey(to='feedback_form.feedback_student_info')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
