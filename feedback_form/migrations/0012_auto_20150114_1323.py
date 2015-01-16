# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0011_auto_20150114_1308'),
    ]

    operations = [
        migrations.AlterField(
            model_name='academic_assessment_info',
            name='suggestion_for_course',
            field=models.CharField(max_length=80000, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='academic_assessment_info',
            name='suggestion_for_subject',
            field=models.CharField(max_length=80000, blank=True),
            preserve_default=True,
        ),
    ]
