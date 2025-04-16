from django.contrib import admin
from django.utils.translation import gettext_lazy as _
from django.utils import timezone
from django import forms
from django.contrib import messages
from datetime import timedelta
from django.urls import path, reverse
from django.utils.html import format_html
from django.contrib.admin import widgets
from django.contrib.admin.widgets import AdminDateWidget
from django.db.models import Q, Sum
from django.utils.safestring import mark_safe
from django.template.response import TemplateResponse
from django.shortcuts import redirect
from HotelManagement.admin import ImageAdmin
from HotelManagement.models import Hotel
from api.admin import admin_site
from .models import RoomType, Category, Availability, RoomPrice, RoomImage

class HotelManagerAdminMixin:

    def get_queryset(self, request):
        qs = super().get_queryset(request)
        if request.user.user_type == 'hotel_manager':
            qs = qs.filter(hotel__manager=request.user)
        elif request.user.user_type == 'hotel_staff':
            return qs.filter(hotel__manager=request.user.chield)
        return qs

    def formfield_for_foreignkey(self, db_field, request, **kwargs):
        if not request.user.is_superuser:
            if db_field.name == "hotel":
                kwargs["queryset"] = Hotel.objects.filter(Q(manager=request.user) | Q(manager=request.user.chield))
            elif db_field.name == "room_type":
                kwargs["queryset"] = RoomType.objects.filter(Q(hotel__manager=request.user) | Q(hotel__manager=request.user.chield))

            elif db_field.name == "category":
                kwargs["queryset"] = Category.objects.filter(Q(hotel__manager=request.user) | Q(hotel__manager=request.user.chield))
            elif db_field.name == "room_price":
                kwargs["queryset"] = RoomPrice.objects.filter(Q(hotel__manager=request.user) | Q(hotel__manager=request.user.chield))
            elif db_field.name == "room_image":
                kwargs["queryset"] = RoomImage.objects.filter(Q(hotel__manager=request.user) | Q(hotel__manager=request.user.chield))
            elif db_field.name == "":
                kwargs["queryset"] = RoomImage.objects.filter(Q(hotel__manager=request.user) | Q(hotel__manager=request.user.chield))
        return super().formfield_for_foreignkey(db_field, request, **kwargs)


    def get_form(self, request, obj=None, **kwargs):
        form = super().get_form(request, obj, **kwargs)
        if not request.user.is_superuser and request.user.user_type == 'hotel_manager':
            
            form.base_fields['hotel'].queryset = Hotel.objects.filter(manager=request.user)
            form.base_fields['hotel'].initial = Hotel.objects.filter(manager=request.user).first()
            form.base_fields['hotel'].widget.attrs['readonly'] = True
            form.base_fields['hotel'].required = False
            
            if 'updated_by' in form.base_fields:
                form.base_fields['updated_by'].initial = request.user
                form.base_fields['updated_by'].widget.attrs['disabled'] = True
                form.base_fields['updated_by'].required = False
            
            if 'created_by' in form.base_fields:
                
                form.base_fields['created_by'].widget.attrs['disabled'] = True
                form.base_fields['created_by'].initial = request.user
                form.base_fields['created_by'].required = False
        return form

    def get_readonly_fields(self, request, obj=None):
        if obj:  # If the object exists (i.e., we are editing it)
            return self.readonly_fields + ('created_by', 'updated_by')
        return self.readonly_fields

    def save_model(self, request, obj, form, change):
        if not obj.pk:
            obj.created_by = request.user
        obj.updated_by = request.user
        super().save_model(request, obj, form, change)

class CategoryAdmin(HotelManagerAdminMixin, admin.ModelAdmin):
    list_display = ['name', 'status', 'description', 'get_room_types_count']
    search_fields = ['name', 'status']
    list_filter = ['status']
    readonly_fields =('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
    def get_readonly_fields(self, request, obj=None):
        if not request.user.is_superuser:  
            return ('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
        return self.readonly_fields
    
    def get_room_types_count(self, obj):
        return obj.room_types.count()
    get_room_types_count.short_description = _("عدد أنواع الغرف")




class RoomImageInline(admin.TabularInline):  
    model = RoomImage
    extra = 1
    fields = ('image', 'is_main', 'caption')
    verbose_name = "صورة الغرفة"
    verbose_name_plural = "صور الغرفة"


class RoomTypeAdmin(HotelManagerAdminMixin, admin.ModelAdmin):
    inlines = [RoomImageInline]
    list_display = ['name', 'hotel', 'category', 'default_capacity', 'max_capacity', 'rooms_count', 'base_price', 'is_active', 'get_available_rooms', 'preview_image']
    search_fields = ['name', 'hotel__name']
    list_filter = ['hotel', 'category', 'is_active']
    list_editable = ['is_active', 'base_price']
    readonly_fields =('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
    def get_readonly_fields(self, request, obj=None):
        if not request.user.is_superuser:  
            return ('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
        return self.readonly_fields
    
    def get_available_rooms(self, obj):
        today = timezone.now().date()
        availability = Availability.objects.filter(
            room_type=obj,
            availability_date=today
        ).first()
        if availability:
            available = availability.available_rooms
            total = obj.rooms_count
            percentage = (available / total * 100) if total > 0 else 0
            color = '#28a745' if percentage > 50 else '#ffc107' if percentage > 20 else '#dc3545'
            return format_html(
                '<div style="text-align: center;">'
                '<div style="font-size: 1.2em; color: {};">{}/{}</div>'
                '<div style="background: #eee; border-radius: 10px; height: 10px; width: 100px; margin: 5px auto;">'
                '<div style="background: {}; width: {}%; height: 100%; border-radius: 10px;"></div>'
                '</div>'
                '</div>',
                color, available, total, color, percentage
            )
        return format_html(
            '<div style="text-align: center; color: #dc3545;">0/{}</div>',
            obj.rooms_count
        )
    get_available_rooms.short_description = _("الغرف المتوفرة اليوم")

    def preview_image(self, obj):
        main_image = obj.images.filter(is_main=True).first()
        if main_image:
            return format_html(
                '<div style="text-align: center;">'
                '<img src="{}" style="width: 50px; height: 50px; object-fit: cover; border-radius: 5px; box-shadow: 0 2px 4px rgba(0,0,0,0.1);" />'
                '</div>',
                main_image.image.url
            )
        return format_html(
            '<div style="text-align: center; color: #999;">'
            '<span style="font-size: 24px;">🖼️</span>'
            '</div>'
        )
    preview_image.short_description = _("الصورة")

    def is_active(self, obj):
        icon = '✅' if obj.is_active else '❌'
        color = '#28a745' if obj.is_active else '#dc3545'
        return format_html(
            '<span style="color: {}; font-size: 1.2em;">{}</span>',
            color, icon
        )
    is_active.short_description = _("نشط")


class AvailabilityAdmin(HotelManagerAdminMixin, admin.ModelAdmin):
    change_list_template = 'admin/rooms/availability/change_list.html'
    list_display = ['room_type', 'hotel', 'availability_date', 'available_rooms',  'bulk_create_button']
    search_fields = ['room_type__name', 'hotel__name']
    list_filter = ['hotel', 'availability_date', 'room_type']
    list_editable = ['available_rooms']
    date_hierarchy = 'availability_date'
    readonly_fields =('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
    def get_readonly_fields(self, request, obj=None):
        if not request.user.is_superuser:  
            return ('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
        return self.readonly_fields
    
    def bulk_create_button(self, obj):
        """عرض زر الإنشاء الجماعي"""
        url = reverse('admin:rooms_availability_bulk_create')
        return format_html(
            '<a class="button" href="{}">{}</a>',
            url,
            _('إنشاء جماعي')
        )
    bulk_create_button.short_description = ''
    bulk_create_button.allow_tags = True

    def get_urls(self):
        urls = super().get_urls()
        custom_urls = [
            path(
                'bulk-create/',
                self.admin_site.admin_view(self.bulk_create_view),
                name='rooms_availability_bulk_create',
            ),
        ]
        return custom_urls + urls
    
    def bulk_create_view(self, request):
        """عرض نموذج الإنشاء الجماعي"""
        if request.method == 'POST':
            form = BulkAvailabilityAdminForm(request.POST, user=request.user)
            if form.is_valid():
                start_date = form.cleaned_data['start_date']
                end_date = form.cleaned_data['end_date']
                available_rooms = form.cleaned_data['available_rooms']
                room_type = form.cleaned_data['room_type']
                
                current_date = start_date
                bulk_list = []
                
                while current_date <= end_date:
                    bulk_list.append(
                        Availability(
                            hotel=room_type.hotel,
                            room_type=room_type,
                            availability_date=current_date,
                            available_rooms=available_rooms,
                        )
                    )
                    current_date += timedelta(days=1)
                
                try:
                    Availability.objects.bulk_create(bulk_list, ignore_conflicts=True)
                    self.message_user(request, _("تم إنشاء توفر الغرف بنجاح"), messages.SUCCESS)
                except Exception as e:
                    self.message_user(request, _("حدث خطأ أثناء إنشاء توفر الغرف: {}").format(str(e)), messages.ERROR)
                
                return redirect('admin:rooms_availability_changelist')
        else:
            form = BulkAvailabilityAdminForm(user=request.user)
            
        context = {
            'form': form,
            'title': _('إنشاء توفر الغرف'),
            'site_title': self.admin_site.site_title,
            'site_header': self.admin_site.site_header,
            'has_permission': True,
            'is_popup': False,
            'is_nav_sidebar_enabled': True,
            'available_apps': self.admin_site.get_app_list(request),
        }
        
        return TemplateResponse(request, 'admin/rooms/availability/bulk_create.html', context)

    actions = ['copy_to_next_day']
    
    def copy_to_next_day(self, request, queryset):
        for availability in queryset:
            next_day = availability.availability_date + timedelta(days=1)
            Availability.objects.get_or_create(
                hotel=availability.hotel,
                room_type=availability.room_type,
                availability_date=next_day,
                defaults={
                    'available_rooms': availability.available_rooms,
                }
            )
        self.message_user(request, _("تم نسخ التوفر إلى اليوم التالي بنجاح"))
    copy_to_next_day.short_description = _("نسخ التوفر إلى اليوم التالي")

class BulkAvailabilityAdminForm(forms.Form):
    start_date = forms.DateField(
        label=_("تاريخ البدء"),
        widget=forms.DateInput(attrs={'type': 'date'})
    )
    end_date = forms.DateField(
        label=_("تاريخ الانتهاء"),
        widget=forms.DateInput(attrs={'type': 'date'})
    )
    available_rooms = forms.IntegerField(
        label=_("عدد الغرف المتوفرة"), 
        min_value=0
    )
    room_type = forms.ModelChoiceField(
        queryset=RoomType.objects.all(),
        label=_("نوع الغرفة"),
        empty_label=None
    )


    def __init__(self, *args, **kwargs):
        user = kwargs.pop('user', None)
        super().__init__(*args, **kwargs)
        if user and not user.is_superuser:
            self.fields['room_type'].queryset = RoomType.objects.filter(hotel__manager=user)


class RoomPriceAdminForm(forms.ModelForm):
    class Meta:
        model = RoomPrice
        fields = '__all__'




class RoomPriceAdmin(HotelManagerAdminMixin, admin.ModelAdmin):
    form = RoomPriceAdminForm
    list_display = ['room_type', 'hotel', 'price', 'date_from', 'date_to', 'is_special_offer', 'get_days_remaining']
    search_fields = ['room_type__name', 'hotel__name']
    list_filter = ['hotel', 'room_type', 'is_special_offer']
    list_editable = ['price', 'is_special_offer']
    readonly_fields =('created_at', 'updated_at','created_by', 'updated_by','deleted_at')

    def get_readonly_fields(self, request, obj=None):
        if not request.user.is_superuser:  
            return ('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
        return self.readonly_fields

    def get_days_remaining(self, obj):
        today = timezone.now().date()
        if obj.date_to >= today:
            days = (obj.date_to - today).days
            return _("متبقي {} يوم").format(days)
        return _("منتهي")
    get_days_remaining.short_description = _("المدة المتبقية")
    
    


class RoomImageAdmin(HotelManagerAdminMixin, admin.ModelAdmin):
    list_display = ['room_type', 'hotel', 'preview_image', 'is_main', 'caption']
    search_fields = ['room_type__name', 'hotel__name', 'caption']
    list_filter = ['hotel', 'room_type', 'is_main']
    list_editable = ['is_main', 'caption']
    readonly_fields =('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
    def get_readonly_fields(self, request, obj=None):
        if not request.user.is_superuser:  
            return ('created_at', 'updated_at','created_by', 'updated_by','deleted_at')
        return self.readonly_fields


    def preview_image(self, obj):
        if obj.image:
            return mark_safe(f'<img src="{obj.image.url}" width="50" height="50" />')
        return ""
    preview_image.short_description = _("معاينة")





admin_site.register(Category,CategoryAdmin)


admin_site.register(RoomImage,RoomImageAdmin)
admin_site.register(RoomPrice,RoomPriceAdmin)
admin_site.register(Availability,AvailabilityAdmin)
admin_site.register(RoomType,RoomTypeAdmin)
