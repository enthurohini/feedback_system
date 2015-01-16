# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('feedback_form', '0013_auto_20150114_1330'),
    ]

    operations = [
        migrations.AlterField(
            model_name='faculty_table',
            name='date_of_birth',
            field=models.DateField(),
            preserve_default=True,
        ),
    ]
