# Generated by Django 4.0 on 2022-04-05 18:35

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('base_app', '0015_alter_promissory_final_amount_and_more'),
    ]

    operations = [
        migrations.RenameField(
            model_name='promissory',
            old_name='final_paid_on',
            new_name='final_due_on',
        ),
        migrations.RenameField(
            model_name='promissory',
            old_name='second_paid_on',
            new_name='second_due_on',
        ),
    ]