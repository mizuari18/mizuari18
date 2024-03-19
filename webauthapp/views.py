from contextlib import redirect_stderr
from multiprocessing import AuthenticationError
from django.shortcuts import render
from .forms import bookForm
from .models import bookModel

def index(request):
    if request.method == 'GET':
        return render(request, 'index.html')

def create(request):
    context = {}
    form = bookForm(request.POST or None)
    if form.is_valid():
        form.save()
    context['form'] = form
    return render(request, "book_create.html", context)

def list(request):
    context = {}
    context["dataset"] = bookModel.objects.all()
    return render(request, "book_list.html", context)
def login(request):
    if request.method == 'post':
        username = request.POST('username')
        password = request.POST('password')
        user = Authenticate(request, username=username, password=password)
        if user is not none:
            login(request, user)
            return redirect('webautapp/')
        else:
            massage,eror(request, 'invalid username or password')
    return render(request, 'login.html')