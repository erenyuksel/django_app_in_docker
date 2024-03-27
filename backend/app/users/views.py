from django.contrib.auth import get_user_model
from rest_framework.generics import ListAPIView

from app.users.serializers import UserSerializer

User = get_user_model()


class ListUsers(ListAPIView):
    """
    List all Users.
    """
    serializer_class = UserSerializer
    queryset = User.objects.all()
