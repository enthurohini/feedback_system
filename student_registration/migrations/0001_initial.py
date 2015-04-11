# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
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
            ],
            options={
            },
            bases=(models.Model,),
        ),
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
        migrations.AddField(
            model_name='student_academic_info',
            name='student_no',
            field=models.ForeignKey(to='student_registration.Student_personal_info'),
            preserve_default=True,
        ),
    ]
