# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('student_registration', '0002_auto_20150420_1825'),
    ]

    operations = [
        migrations.CreateModel(
            name='Student_unique_id',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('unique_id', models.IntegerField()),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
