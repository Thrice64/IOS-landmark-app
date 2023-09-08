from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='index'),
    path('send_data', views.send_data, name='send_data'),
    path('receive_data', views.receive_data, name='receive_data'),
]