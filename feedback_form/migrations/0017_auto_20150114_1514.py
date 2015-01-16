# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0016_auto_20150114_1507'),
    ]

    operations = [
        migrations.AlterField(
            model_name='time_table',
            name='day',
            field=models.CharField(max_length=20, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='time_table',
            name='section',
            field=models.CharField(max_length=2, blank=True),
            preserve_default=True,
        ),
    ]
