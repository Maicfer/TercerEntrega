# Generated by Django 5.1.7 on 2025-04-09 04:56

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Destino',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombre', models.CharField(max_length=100)),
                ('pais', models.CharField(max_length=100)),
                ('descripcion', models.TextField()),
                ('imagen', models.ImageField(upload_to='destinos/')),
                ('enlace', models.URLField(blank=True, null=True)),
                ('precio', models.DecimalField(max_digits=10, decimal_places=2)),                
            ],
        ),
    ]
