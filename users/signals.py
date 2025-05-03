import random
from django.db.models.signals import post_save
from django.dispatch import receiver
from django.contrib.auth.signals import user_logged_in
from accounts.models import ChartOfAccounts
from social_django.models import UserSocialAuth
from accounts.services_util import *
from users.models import CustomUser

@receiver(user_logged_in, sender=CustomUser)
def create_chart_account(sender, request, user, **kwargs):
    if hasattr(user, 'chart') and user.chart:
        print("User already has a chart. Skipping chart creation.")
        return

    social_account = UserSocialAuth.objects.filter(user=user).first()

    if social_account:
        extra_data = social_account.extra_data
        gender = extra_data.get('gender', 'Not specified')
        birthday = extra_data.get('birthday', 'Not specified')
        picture = extra_data.get('picture', 'Default image URL')
        user.gender = gender if  gender else None
        user.birthday = birthday if  birthday else None
        user.image = picture if  picture else None
    else:
        print("No social account linked with this user.")

    print("First Name:", user.first_name)

    random_number = random.randint(1000, 9999)

    # Intentar obtener la cuenta padre, o crearla si no existe
    try:
        parent_account = ChartOfAccounts.objects.get(account_number="1100")
    except ChartOfAccounts.DoesNotExist:
        # Crear la cuenta padre si no existe
        parent_account = create_chart_of_account(
            account_number="1100",
            account_name="حسابات العملاء",
            account_type="Assets",
            account_balance=0,
            account_description="الحسابات المدينة / العملاء الرئيسية",
            account_status=True
        )
        print(f"Created parent account: {parent_account}")

    # Crear la cuenta del cliente
    chart = create_chart_of_account(
        account_number=f"110{random_number}",
        account_name=f"عملاء دائمون - {user.first_name} {user.last_name}",
        account_type="Assets",
        account_balance=0,
        account_parent=parent_account,
        account_description="الحسابات المدينة / العملاء",
        account_status=True,
    )

    user.chart = chart
    user.save()
