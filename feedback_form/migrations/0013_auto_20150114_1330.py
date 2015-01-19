# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0012_auto_20150114_1323'),
    ]

    operations = [
        migrations.AlterField(
            model_name='faculty_table',
            name='area_of_interest',
            field=models.CharField(max_length=50, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='contact_number',
            field=models.CharField(max_length=20, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='date_of_birth',
            field=models.DateField(blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='designation',
            field=models.CharField(max_length=50, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='discipline',
            field=models.CharField(max_length=20, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='email',
            field=models.EmailField(max_length=100, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='qualification',
            field=models.CharField(max_length=50, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='responsibility',
            field=models.CharField(max_length=30, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='status',
            field=models.IntegerField(default=1, max_length=1),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='faculty_table',
            name='type',
            field=models.IntegerField(default=2, max_length=1),
            preserve_default=True,
        ),
    ]
