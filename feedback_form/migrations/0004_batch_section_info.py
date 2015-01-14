# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0003_course'),
    ]

    operations = [
        migrations.CreateModel(
            name='batch',
            fields=[
                ('batch_id', models.CharField(max_length=20, serialize=False, primary_key=True)),
                ('session', models.IntegerField(max_length=10, verbose_name=b'Year of the batch')),
                ('course_id', models.ForeignKey(to='feedback_form.course')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='section_info',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('section', models.CharField(max_length=5)),
                ('batch_id', models.ForeignKey(to='feedback_form.batch')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
