# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0023_auto_20150515_1732'),
    ]

    operations = [
        migrations.AddField(
            model_name='student_unique_id',
            name='current_sem',
            field=models.IntegerField(default=0, max_length=2),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='student_unique_id',
            name='current_year',
            field=models.IntegerField(default=0, max_length=4),
            preserve_default=True,
        ),
    ]
