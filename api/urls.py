from django.urls import path, include
from django.views import View
from rest_framework.routers import DefaultRouter

from customer.models import Favourites
from .views import *
from rest_framework_simplejwt.views import (
    TokenObtainPairView,
    TokenRefreshView,
    TokenVerifyView
)
 
app_name = 'api'
# Test
router = DefaultRouter()
router.register(r'hotels', HotelsViewSet, basename='hotels')
router.register(r'favourites', FavouritesViewSet, basename='favourite')
router.register(r'hotel-payment-methods', HotelPaymentMethodViewSet, basename='hotel-payment-methods')
router.register(r'payment', PaymentViewSet, basename='payment')
router.register(r'bookings', BookingViewSet,basename='booking')
router.register(r'notifications', NotificationsViewSet,basename='notification')
router.register(r'categories', CategoriesViewSet,basename='categories')
# router.register(r'user-profile', UserProfileView,basename='user-profile')
# router.register(r'hotel_availability', HotelAvailabilityViewSet,basename='hotel_availability')

urlpatterns = [
    
    path('', include(router.urls)),
    path('hotel_availability/', HotelAvailabilityViewSet.as_view(), name='hotel_availability'),
    path('user-profile/', UserProfileView.as_view(), name='user-profile'),
    path('change-password/', ChangePasswordView.as_view(), name='change-password'),
    # path('profile/', UserProfileView.as_view(), name='user-profile'),
    #  JWT Token endpoints
    path('token/', TokenObtainPairView.as_view(), name='token_obtain_pair'),
    path('token/refresh/', TokenRefreshView.as_view(), name='token_refresh'),
    path('token/verify/', TokenVerifyView.as_view(), name='token_verify'),
    #  JWT authentication endpoints
    path('register/', RegisterView.as_view(), name='register'), 
    path('login/', LoginView.as_view(), name='login'),  
    path('logout/', LogoutView.as_view(), name='logout'),  
    path('usage/', usage, name='usage'),  
    path('chat_assestant/', call_gemini_chat_bot, name='chat_assestant'),  
    path('get_best_hotels_by_gemini/', get_best_hotels_by_gemini, name='get_best_hotels_by_gemini'),  
]

