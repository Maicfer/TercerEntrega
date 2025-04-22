from django.contrib.auth import get_user_model

User = get_user_model()

username = "root"
email = "root@email.com"
password = "Proyecto"

if not User.objects.filter(username=username).exists():
    User.objects.create_superuser(username=username, email=email, password=password)
    print("✅ Superusuario creado correctamente")
else:
    print("ℹ️ El superusuario ya existe")
