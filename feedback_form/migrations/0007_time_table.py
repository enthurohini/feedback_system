# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0006_subject'),
    ]

    operations = [
        migrations.CreateModel(
            name='time_table',
            fields=[
                ('s_no', models.AutoField(serialize=False, primary_key=True)),
                ('year', models.IntegerField(max_length=10)),
                ('section', models.CharField(max_length=2)),
                ('day', models.CharField(max_length=20)),
                ('time_from', models.TimeField()),
                ('time_to', models.TimeField()),
                ('room_number', models.CharField(max_length=10)),
                ('batch_id', models.ForeignKey(to='feedback_form.batch')),
                ('course_id', models.ForeignKey(to='feedback_form.course')),
                ('faculty_id', models.ForeignKey(to='feedback_form.faculty_table')),
                ('subject_id', models.ForeignKey(to='feedback_form.subject')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
