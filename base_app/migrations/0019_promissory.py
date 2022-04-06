# Generated by Django 4.0 on 2022-04-06 05:10

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('base_app', '0018_delete_promissory'),
    ]

    operations = [
        migrations.CreateModel(
            name='Promissory',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('inital_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('inital_paid_on', models.DateField(blank=True, default='', null=True)),
                ('inital_paid_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('inital_paid_date', models.DateField(blank=True, default='', null=True)),
                ('inital_balance_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('inital_due_date', models.DateField(blank=True, default='', null=True)),
                ('inital_total_payment', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('second_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('second_due_on', models.DateField(blank=True, default='', null=True)),
                ('second_paid_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('second_paid_date', models.DateField(blank=True, default='', null=True)),
                ('second_balance_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('second_due_date', models.DateField(blank=True, default='', null=True)),
                ('second_total_payment', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('final_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('final_due_on', models.DateField(blank=True, default='', null=True)),
                ('final_paid_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('final_paid_date', models.DateField(blank=True, default='', null=True)),
                ('final_balance_amount', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('final_due_date', models.DateField(blank=True, default='', null=True)),
                ('final_total_payment', models.CharField(blank=True, default='', max_length=1000, null=True)),
                ('user_id', models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.SET_NULL, related_name='promissory_user', to='base_app.user_registration')),
            ],
        ),
    ]