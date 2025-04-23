# users/api_urls.py

from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import ReseñaViewSet

router = DefaultRouter()
router.register(r'reseñas', ReseñaViewSet, basename='reseña')


urlpatterns = [
    path('', include(router.urls)),
]

from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
)

urlpatterns += [
    path('api/token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('api/token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
]