from django.http import JsonResponse
from .models import Message


def hello(request):

    message = Message.objects.first()

    return JsonResponse({
        "message": message.text
    })
