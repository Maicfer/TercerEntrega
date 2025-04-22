# create_superuser.py
from django.contrib.auth.models import User

username = "root"
email = "root@email.com"
password = "Proyecto"

if not User.objects.filter(username=username).exists():
    User.objects.create_superuser(username=username, email=email, password=password)
    print("Superusuario creado correctamente")
else:
    print("El usuario ya existe")
