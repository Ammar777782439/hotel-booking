from django.urls import path
from . import views


app_name = 'payments'
urlpatterns = [
    
    path('',views.user_dashboard_index,name='user_dashboard_index'),
    path('user-dashboard/bookings',views.user_dashboard_bookings,name='user_dashboard_bookings'),
    path('user-dashboard/settings',views.user_dashboard_settings,name='user_dashboard_settings'),
    path('user-dashboard/wishlist',views.user_dashboard_wishlist,name='user_dashboard_wishlist'),
    path('user-dashboard/reviews',views.user_dashboard_reviews,name='user_dashboard_reviews'),
    path('user-dashboard/profile',views.user_dashboard_profile,name='user_dashboard_profile'),

    # admin
    
    path('hotel_manager_dashboard_index',views.hotel_manager_dashboard_index,name='hotel_manager_dashboard_index'),
    path('admin_dashboard_booking',views.admin_dashboard_booking,name='admin_dashboard_booking'),
    path('admin_payments',views.admin_payments,name='admin_payments'),
    path('admin_invoice',views.admin_invoice,name='admin_invoice'),
    path('admin_dashboard_wishlist',views.admin_dashboard_wishlist,name='admin_dashboard_wishlist'),
    path('admin_dashboard_users',views.admin_dashboard_users,name='admin_dashboard_users'),
    path('admin_dashboard_user_detail',views.admin_dashboard_user_detail,name='admin_dashboard_user_detail'),
    path('admin_dashboard_settings',views.admin_dashboard_settings,name='admin_dashboard_settings'),
    path('admin_dashboard_reviews',views.admin_dashboard_reviews,name='admin_dashboard_reviews'),
    path('admin_dashboard_orders',views.admin_dashboard_orders,name='admin_dashboard_orders'),
    path('admin_dashboard_orders_detail',views.admin_dashboard_orders_detail,name='admin_dashboard_orders_detail'),
    path('admin_currency_list',views.admin_currency_list,name='admin_currency_list'),
    
    # payment methods for Hotels
    path('cart/<int:room_id>',views.cart,name='cart'),
    path('checkout/<int:hotel_id>/', views.hotel_checkout, name='checkout'),
    path('confirm-payment/<int:hotel_id>/', views.hotel_confirm_payment, name='confirm_payment'),
   
]
