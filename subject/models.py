from django.db import models


class Subject(models.Model):
    """Модель предмета"""
    name = models.CharField('Наименование', max_length=255)

    def __str__(self):
        return "{0}".format(self.name)

    class Meta:
        db_table = 'subjects'
