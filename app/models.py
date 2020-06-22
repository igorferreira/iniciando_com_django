from django.db import models

# Django ORM

# Create your models here.
class Category(models.Model):
    name = models.CharField(max_length=255)
