from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator, EmptyPage
from bookings.models import Booking  
from notifications.models import Notifications
from reviews.models import HotelReview, RoomReview
from django.shortcuts import render, redirect
from .forms import UserProfileForm
from django.contrib.auth.decorators import login_required



@login_required
def user_dashboard_index(request):
    user = request.user  

    notifications = Notifications.objects.filter(user=user, is_active=True).order_by('-send_time')[:5] 
    
    unread_notifications_count = Notifications.objects.filter(user=user, status='0', is_active=True).count()

    return render(request, 'admin/user_dashboard/index.html', {
        'user': user,
        'notifications': notifications,
        'unread_notifications_count': unread_notifications_count
    })


@login_required
def user_dashboard_bookings(request):
    bookings = Booking.objects.filter(user=request.user).order_by('-check_in_date')

    page_number = request.GET.get('page', 1)  

    try:
        page_number = int(page_number)
        if page_number < 1:
            page_number = 1  
    except (ValueError, TypeError):
        page_number = 1 

    paginator = Paginator(bookings, 10) 

    try:
        page_obj = paginator.page(page_number)
    except EmptyPage:
        page_obj = paginator.page(paginator.num_pages)

    bookings_with_location = []
    for booking in page_obj:
        hotel_location = booking.hotel.location.address  
        city_name = booking.hotel.location.city 
        bookings_with_location.append({
            'booking': booking,
            'hotel_location': hotel_location,
            'city_name': city_name, 
        })

    return render(request, 'admin/user_dashboard/pages/user-bookings.html', {
        'bookings_with_location': bookings_with_location,
        'page_obj': page_obj
    })



@login_required
def cancel_booking(request, booking_id):
    try:
        booking = Booking.objects.get(id=booking_id, user=request.user)

        booking.delete()

        return redirect('customer:user_bookings')
    except Booking.DoesNotExist:

        return redirect('customer:user_bookings')



@login_required
def user_dashboard_settings(request):
    user = request.user
    if request.method == "POST":
        # تمرير البيانات المرفوعة عبر request.FILES
        form = UserProfileForm(request.POST, request.FILES, instance=user)
        if form.is_valid():
            form.save()  # حفظ النموذج
            return redirect('customer:user_dashboard_settings')  # إعادة التوجيه بعد الحفظ
    else:
        form = UserProfileForm(instance=user)
    
    return render(request, 'admin/user_dashboard/pages/user-dashboard-settings.html', {'form': form, 'user': user})


@login_required
def user_dashboard_settings_password(request):
    return render(request,'admin/user_dashboard/pages/user-dashboard-settings.html')

from django.shortcuts import render, redirect
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from django.core.exceptions import ValidationError

@login_required
def user_dashboard_settings_email(request):
    if request.method == 'POST':
        current_email = request.POST.get('current_email')
        new_email = request.POST.get('new_email')
        confirm_email = request.POST.get('confirm_email')

        user = request.user

        # التحقق من أن البريد الحالي صحيح
        if user.email != current_email:
            messages.error(request, 'البريد الإلكتروني الحالي غير صحيح.')
            return redirect('customer:user_dashboard_settings_email')

        # التحقق من أن البريدين الجدد متطابقين
        if new_email != confirm_email:
            messages.error(request, 'البريد الإلكتروني الجديدين غير متطابقين.')
            return redirect('customer:user_dashboard_settings_email')

        # التحقق من أن البريد الجديد غير مشابه للبريد الحالي
        if new_email == current_email:
            messages.error(request, 'البريد الإلكتروني الجديد يجب أن يكون مختلفاً عن البريد الإلكتروني الحالي.')
            return redirect('customer:user_dashboard_settings_email')

        # تحديث البريد الإلكتروني
        try:
            user.email = new_email
            user.save()
            messages.success(request, 'تم تغيير البريد الإلكتروني بنجاح.')
        except ValidationError as e:
            messages.error(request, f'حدث خطأ: {e}')
        return redirect('customer:user_dashboard_settings_email')

    return render(request, 'admin/user_dashboard/pages/user-dashboard-settings.html')




@login_required
def user_dashboard_wishlist(request):
    return render(request,'admin/user_dashboard/pages/user-dashboard-wishlist.html')


@login_required
def user_dashboard_reviews(request):
    # جلب المراجعات من قاعدة البيانات
    hotel_reviews = HotelReview.objects.all()  # جلب جميع مراجعات الفنادق
    room_reviews = RoomReview.objects.all()  # جلب جميع مراجعات الغرف

    # تمرير قائمة النجوم بناءً على التقييم
    for review in hotel_reviews:
        review.stars = [1] * review.rating_service  

    for review in room_reviews:
        review.stars = [1] * review.rating 

    return render(request, 'admin/user_dashboard/pages/user-dashboard-reviews.html', {
        'hotel_reviews': hotel_reviews,
        'room_reviews': room_reviews,
    })



@login_required
def user_dashboard_profile(request):
    user = request.user  

    return render(request, 'admin/user_dashboard/pages/user-dashboard-profile.html', {'user': user})
