# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0007_time_table'),
    ]

    operations = [
        migrations.AddField(
            model_name='faculty_table',
            name='designation',
            field=models.CharField(default=b'-', max_length=50),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='faculty_table',
            name='responsibility',
            field=models.CharField(default=b'-', max_length=30),
            preserve_default=True,
        ),
    ]
