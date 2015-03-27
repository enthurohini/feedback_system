# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0018_question'),
    ]

    operations = [
        migrations.CreateModel(
            name='Student_personal_info',
            fields=[
                ('student_no', models.AutoField(serialize=False, primary_key=True)),
                ('first_name', models.CharField(max_length=50)),
                ('mid_name', models.CharField(max_length=50, blank=True)),
                ('last_name', models.CharField(max_length=50)),
                ('father_name', models.CharField(max_length=50)),
                ('mother_name', models.CharField(max_length=50)),
                ('birth_date', models.DateField()),
                ('gender', models.CharField(max_length=8)),
                ('category', models.CharField(max_length=10)),
                ('mobile_no', models.IntegerField(max_length=20)),
                ('telephone_no', models.IntegerField(default=0, max_length=20)),
                ('email_id', models.EmailField(max_length=254)),
                ('current_address', models.CharField(max_length=100)),
                ('permanent_address', models.CharField(max_length=100)),
                ('type', models.CharField(max_length=8)),
                ('status', models.IntegerField(max_length=1)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
