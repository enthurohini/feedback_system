# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0004_batch_section_info'),
    ]

    operations = [
        migrations.CreateModel(
            name='faculty_table',
            fields=[
                ('user_id', models.AutoField(max_length=20, serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=50)),
                ('qualification', models.CharField(max_length=50)),
                ('date_of_birth', models.DateField()),
                ('email', models.EmailField(max_length=100)),
                ('discipline', models.CharField(max_length=20)),
                ('gender', models.CharField(max_length=10)),
                ('area_of_interest', models.CharField(max_length=50)),
                ('contact_number', models.CharField(max_length=20)),
                ('type', models.IntegerField(max_length=1)),
                ('status', models.IntegerField(max_length=1)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
