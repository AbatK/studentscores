from django.db import models

from student.models import Student
from subject.models import Subject


class Score(models.Model):
    """Модель оценки"""
    student_id = models.ForeignKey(Student, on_delete=models.CASCADE, null=False, blank=False, db_column='student_id')
    subject_id = models.ForeignKey(Subject, on_delete=models.CASCADE, null=False, blank=False, db_column='subject_id')
    score = models.DecimalField(max_digits=5, decimal_places=2, default=0)

    def __str__(self):
        return '{0}'.format(self.score)

    class Meta:
        db_table = 'scores'
