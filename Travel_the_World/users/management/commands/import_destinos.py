import csv
from django.core.management.base import BaseCommand
from users.models import Destino

class Command(BaseCommand):
    help = 'Importa destinos desde destinos.csv'

    def handle(self, *args, **kwargs):
        with open('destinos.csv', newline='', encoding='utf-8') as csvfile:
            reader = csv.DictReader(csvfile)
            for row in reader:
                destino, created = Destino.objects.get_or_create(
                    nombre=row['nombre'],
                    defaults={
                        'pais': row['pais'],
                        'descripcion': row['descripcion'],
                        'imagen': row['imagen'],
                        'precio': row['precio'] if row['precio'] else None,
                        'enlace': row['enlace'] if row['enlace'] else None,
                    }
                )
                if created:
                    self.stdout.write(self.style.SUCCESS(f'✔️ Agregado: {destino.nombre}'))
                else:
                    self.stdout.write(f'ℹ️ Ya existía: {destino.nombre}')

        self.stdout.write(self.style.SUCCESS('🎉 Importación completada.'))
