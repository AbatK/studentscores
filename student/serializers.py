from abc import ABC

from rest_framework import serializers

from .models import Student


class StudentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Student
        fields = '__all__'


class SubjectDetailSerializer(serializers.Serializer):
    subject_id = serializers.IntegerField()
    subject_name = serializers.CharField(max_length=255)
    average_score = serializers.FloatField()
    total_scores = serializers.IntegerField()


class StudentDetailSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    name = serializers.CharField(max_length=255)
    scores = SubjectDetailSerializer(many=True, read_only=True)
