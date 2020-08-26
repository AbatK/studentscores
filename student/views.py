from django.http import Http404
from rest_framework import viewsets
from rest_framework.response import Response

from .models import Student
from .serializers import StudentSerializer, StudentDetailSerializer
from .services import _get_student_details


class StudentViewSet(viewsets.ModelViewSet):
    queryset = Student.objects.all()
    serializer_class = StudentSerializer

    def retrieve(self, request, pk=None):
        if pk.isdigit() and int(pk) > 0:
            result = _get_student_details(pk)
            return Response(StudentDetailSerializer(result).data)
        raise Http404
