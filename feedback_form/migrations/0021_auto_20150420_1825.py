# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0020_student_academic_info'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student_academic_info',
            name='student_no',
        ),
        migrations.DeleteModel(
            name='Student_academic_info',
        ),
        migrations.DeleteModel(
            name='Student_personal_info',
        ),
    ]
