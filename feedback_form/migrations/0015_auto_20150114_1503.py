# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0014_auto_20150114_1454'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subject',
            name='credits',
            field=models.IntegerField(max_length=2, blank=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='subject',
            name='status',
            field=models.IntegerField(max_length=1, blank=True),
            preserve_default=True,
        ),
    ]
