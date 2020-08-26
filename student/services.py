from django.db.models import F, Avg, Count

from .models import Student
from subject.models import Subject


def _get_student_details(pk):
    """Функция получения детализированной информации о студенте"""
    student = Student.objects.filter(id=pk).first()
    scores = Subject.objects.filter(score__student_id=student) \
        .annotate(
        subject_id=F('id'),
        subject_name=F('name'),
        average_score=Avg('score__score'),
        total_scores=Count('score'))
    student.scores = scores
    return student
