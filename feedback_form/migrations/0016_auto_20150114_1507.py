# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0015_auto_20150114_1503'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subject',
            name='credits',
            field=models.IntegerField(default=5, max_length=2),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='subject',
            name='status',
            field=models.IntegerField(default=0, max_length=1),
            preserve_default=True,
        ),
    ]
