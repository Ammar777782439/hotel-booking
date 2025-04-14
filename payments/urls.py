from django.urls import path
from . import views
from django.contrib.admin.views.decorators import staff_member_required
from payments.services.reports import revenue_summary_view, export_revenue_summary_pdf

app_name = 'payments'
urlpatterns = [
    # Payment methods for Hotels
    path('checkout/<int:room_id>/', views.checkout, name='checkout'),
    path('process_booking/<int:room_id>/', views.process_booking, name='process_booking'),
    path("save-guests/<int:room_id>/", views.save_guests, name="save_guests"),
    path('add_guest/<int:room_id>/', views.add_guest, name='add_guest'),
    path('confirm-payment/', views.hotel_confirm_payment, name='hotel_confirm_payment'),
#    path('process-hotel-payment/', views.process_hotel_payment, name='process_hotel_payment'),
#    path('payment_complete/<int:hotel_id>/', views.payment_complete, name='payment_complete'),

    # Report URLs
    path('reports/revenue-summary/', staff_member_required(revenue_summary_view), name='revenue-summary'),
    path('reports/revenue-summary/export-pdf/', staff_member_required(export_revenue_summary_pdf), name='revenue-summary-export-pdf'),
]
