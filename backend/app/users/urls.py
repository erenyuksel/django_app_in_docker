from django.urls import path

from app.users.views import ListUsers

urlpatterns = [
    path('', ListUsers.as_view(), name='list-users'),
]
