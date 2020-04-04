from django.urls import path
from . import views

urlpatterns=[
    path('',views.login,name='login'),
    path('logout',views.logout,name='logout'),
    path('scanner',views.scanner,name='scanner'),
    path('equipments/<int:id>',views.equipments,name='equipments'),
    path('history/<int:id>',views.history,name='history'),
    path('activity',views.activity,name='activity'),
    path('home',views.home,name='home'),
    path('downloadsinglereport/<int:id>',views.downloadsinglereport,name='downloadsinglereport')
]