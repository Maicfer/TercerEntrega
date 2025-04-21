from django.urls import path
from . import views  
from django.contrib.auth.views import LogoutView

urlpatterns = [
    path('login/', views.login_view, name='login'),
    path('logout/', LogoutView.as_view(template_name='users/logout.html'), name='logout'),
    path('register/', views.register_view, name='register'),
    path('profile/', views.profile_view, name='profile'),
    path('update/', views.update_profile_view, name='update_profile'),
    path('change-password/', views.change_password_view, name='change_password'),
    path('update-email/', views.change_email_view, name='update_email'),
    path('buscar-vuelos/', views.buscar_vuelos, name='buscar_vuelos'),
    path('destinos/', views.destinos_view, name='destinos'),
    path('destinos-texto/', views.mostrar_destinos),
    path('cargar_destinos/', views.cargar_datos_si_es_necesario),
    path('mas_visitados/', views.mas_visitados, name='mas_visitados'),
    path('vuelos/', views.vuelos, name='vuelos'),  # corregido
    path('hoteles/', views.hoteles, name='hoteles'),  # corregido
    path('paquetes/', views.paquetes, name='paquetes'),  # corregido
    path('reseñas/', views.reseñas_view, name='reseñas'),
]
