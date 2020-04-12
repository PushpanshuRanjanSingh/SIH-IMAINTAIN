from django.db import models

# Create your models here.
class activity_tracker(models.Model):
    activity_title=models.CharField(max_length=255)
    activity_date=models.CharField(max_length=255)
    activity_time=models.CharField(max_length=255)

class equipment(models.Model):
    equipment_name=models.CharField(max_length=255)
    department_id=models.IntegerField()
    equipment_doi=models.CharField(max_length=255)
    equipment_details=models.TextField()

class notification(models.Model):
    engineer_id=models.IntegerField()
    notification_text=models.CharField(max_length=255)
    notification_date=models.CharField(max_length=225)
    notification_time=models.CharField(max_length=225)

class Department(models.Model):
    department_name=models.CharField(max_length=225)

class Service(models.Model):
    equipment_id=models.BigIntegerField()
    user_id=models.BigIntegerField()
    service_date=models.CharField(max_length=225)
    status=(
        ('1','Pending'),
        ('2','Complete'),
        ('3','shifted'),
    )
    service_status=models.CharField(max_length=100,choices = status)
    service_remark=models.TextField()