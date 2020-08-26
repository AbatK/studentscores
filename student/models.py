from django.db import models


class Student(models.Model):
    """Модель студента"""
    name = models.CharField('Имя', max_length=255)

    def __str__(self):
        return "{0}".format(self.name)

    class Meta:
        db_table = 'students'
