from django.urls import path
from core.views import hello


urlpatterns = [
    path(
        "api/hello/",
        hello
    ),
]
