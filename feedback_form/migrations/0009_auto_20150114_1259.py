# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0008_auto_20150114_1142'),
    ]

    operations = [
        migrations.AlterField(
            model_name='feedback_student_info',
            name='section',
            field=models.CharField(default=b' ', max_length=1),
            preserve_default=True,
        ),
    ]
