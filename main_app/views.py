from django.http import HttpResponse


def home(request):
	return HttpResponse('Django and PostgreSQL are configured.')

# Create your views here.
