import json

from django.http import HttpResponse
from django.shortcuts import render
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt


# Create your views here.


def index(request):
    return HttpResponse("<h1 align = 'center'> Hello </h1>")


def send_data(request):
    data = [
        {
            'id': 1,
            'title': 'OK'
        },
        {
            'id': 2,
            'title': 'Nice'
        },
        {
            'id': 3,
            'title': 'Cool'
        },
    ]
    return JsonResponse(data, safe=False)


@csrf_exempt
def receive_data(request):
    data_unicode = request.body.decode('utf-8')
    data = json.loads(data_unicode)
    content_id = data['id']
    content_title = data['title']
    print(content_id)
    print(content_title)
    return HttpResponse("")

