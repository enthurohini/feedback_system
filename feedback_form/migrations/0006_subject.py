# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0005_faculty_table'),
    ]

    operations = [
        migrations.CreateModel(
            name='subject',
            fields=[
                ('subject_id', models.CharField(max_length=20, serialize=False, primary_key=True)),
                ('name_of_subject', models.CharField(max_length=50)),
                ('semester', models.IntegerField(max_length=2)),
                ('credits', models.IntegerField(max_length=2)),
                ('status', models.IntegerField(max_length=1)),
                ('is_viva_or_lab', models.IntegerField(max_length=1)),
                ('course_id', models.ForeignKey(to='feedback_form.course')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
