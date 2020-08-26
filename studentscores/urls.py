from django.contrib import admin
from django.template.context_processors import static
from django.urls import path, include
from django.conf import settings

urlpatterns = [
    path('admin/', admin.site.urls),
    path('scores/', include('score.urls')),
    path('student/', include('student.urls')),
    path('subject/', include('subject.urls')),
]
