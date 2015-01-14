# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0002_academic_assessment_info'),
    ]

    operations = [
        migrations.CreateModel(
            name='course',
            fields=[
                ('course_id', models.CharField(max_length=2, serialize=False, primary_key=True)),
                ('course_name', models.CharField(max_length=20)),
                ('stream', models.CharField(max_length=15)),
                ('number_of_sem', models.IntegerField(max_length=2)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
