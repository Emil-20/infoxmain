# Generated by Django 4.0 on 2022-04-06 05:09

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('base_app', '0017_alter_promissory_final_due_date_and_more'),
    ]

    operations = [
        migrations.DeleteModel(
            name='Promissory',
        ),
    ]
