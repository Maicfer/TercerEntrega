from django.contrib import admin
from django.urls import path, include
from users.views import home_view 
from django.conf import settings
from django.conf.urls.static import static
from rest_framework_simplejwt.views import TokenObtainPairView, TokenRefreshView

urlpatterns = [
    path('admin/', admin.site.urls),
    path('users/', include('users.urls')),  # Enlaza las rutas de la app users
    path('', home_view, name='home'),  # Página principal
    path('api/', include('users.api_urls')),
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),  # Endpoints para autenticación JWT
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),  # Endpoints para autenticación JWT
]

# Esto debe ir al final, después de definir urlpatterns
if settings.DEBUG:  # Fuerza para producción si usas Whitenoise u otro proxy
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
