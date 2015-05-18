# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0022_student_unique_id'),
    ]

    operations = [
        migrations.AlterField(
            model_name='student_unique_id',
            name='unique_id',
            field=models.CharField(max_length=15),
            preserve_default=True,
        ),
    ]
