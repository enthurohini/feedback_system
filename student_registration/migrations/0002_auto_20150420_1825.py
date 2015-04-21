# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('student_registration', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student_personal_info',
            name='mobile_no',
            field=models.CharField(max_length=12),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='student_personal_info',
            name='telephone_no',
            field=models.CharField(default=0, max_length=14),
            preserve_default=True,
        ),
    ]
