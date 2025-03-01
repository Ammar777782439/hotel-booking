from django.urls import path
from . import views


app_name = 'payments'
urlpatterns = [
    
    
    
    # payment methods for Hotels
    path('checkout/<int:hotel_id>/', views.hotel_checkout, name='checkout'),
    path('process_booking/<int:room_id>/', views.process_booking, name='process_booking'),
    path('add_guest/<int:room_id>/', views.add_guest, name='add_guest'),
    path('confirm-payment/<int:hotel_id>/', views.hotel_confirm_payment, name='hotel_confirm_payment'),
#    path('process-hotel-payment/', views.process_hotel_payment, name='process_hotel_payment'),
#    path('payment_complete/<int:hotel_id>/', views.payment_complete, name='payment_complete'),
]
