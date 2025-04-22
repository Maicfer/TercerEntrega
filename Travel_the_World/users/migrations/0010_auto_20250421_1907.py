from django.db import migrations
import os

def cargar_destinos(apps, schema_editor):
    from django.core.management import call_command
    BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    ruta_fixture = os.path.join(BASE_DIR, '..', 'fixtures', 'destinos.json')  # ajusta si está en otro lado
    call_command('loaddata', ruta_fixture)

class Migration(migrations.Migration):

    dependencies = [
        ('users', '0010'),  # remplaza con la última migración previa
    ]

    operations = [
        migrations.RunPython(cargar_destinos),
    ]
