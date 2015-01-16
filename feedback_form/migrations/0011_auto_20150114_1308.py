# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0010_auto_20150114_1302'),
    ]

    operations = [
        migrations.AlterField(
            model_name='feedback_student_info',
            name='section',
            field=models.CharField(max_length=1, blank=True),
            preserve_default=True,
        ),
    ]
