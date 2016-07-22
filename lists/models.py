"Fundamental models for lists"

from django.db import models

# Create your models here.

class List(models.Model):
	"""The basic list model"""
	pass

class Item(models.Model):
	"""The item that goes into lists"""
	text = models.TextField(default='')
	list = models.ForeignKey(List, default=None)