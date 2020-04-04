from django.contrib import admin
from django.shortcuts import render,redirect
from django.urls import path
from .models import activity_tracker,equipment,Service,notification,Department
from django.contrib import messages
from django.contrib.admin import AdminSite
from django.http import HttpResponse
from django.contrib.auth.models import User
from datetime import date,datetime
from django.template.response import TemplateResponse
import qrcode
from  PIL import Image,ImageDraw,ImageFont


admin.site.register(activity_tracker)
admin.site.register(Service)
admin.site.register(Department)
admin.site.register(notification)
admin.site.register(equipment)

class MyAdminSite(AdminSite):
    login_template = "admin/Slogin.html"
    index_template="admin/Shome.html"
    def get_urls(self):
        
        urls = super().get_urls()
        urls += [
             path('add_department/', self.admin_view(self.add_department),name="add_department"),
             path('add_equipment/',self.admin_view(self.add_equipment),name="add_equipment"),
             path('add_engineer/',self.admin_view(self.add_engineer),name="add_engineer"),
             path('engineer/<int:id>',self.admin_view(self.update_engineer),name="update_engineer"),
             path('delete/<int:id>',self.admin_view(self.update_engineer),name="delete_engineer"),
             path('downloadqrcode/<int:id>',self.admin_view(self.qrcode),name="downloadqrcode")       
        
        ]
        return urls

    def index(self,request):
        if request.method=="POST":
            engid=request.POST['eng_id']
            noti=request.POST['notification']
            ndate=date.today()
            ntime=datetime.now().strftime("%H:%M:%S")
            n=notification(engineer_id=engid,notification_text=noti,notification_date=ndate,notification_time=ntime)
            n.save()
            #messages.info(request,'Notification Send Successfully')


            
        department=Department.objects.all()
        engineer=User.objects.filter(is_staff=False)
        service=Service.objects.raw('''SELECT engineer_service.id as service_id,auth_user.username,engineer_service.service_date,engineer_equipment.id,engineer_equipment.equipment_name FROM engineer_service
        JOIN auth_user ON auth_user.id=engineer_service.equipment_id
        JOIN engineer_equipment ON engineer_equipment.id=engineer_service.equipment_id
        ORDER BY engineer_service.id DESC
        ''')

        equip=equipment.objects.all()
        noti=notification.objects.raw('''
        SELECT * FROM engineer_notification Join auth_user on auth_user.id=engineer_notification.id
        order by engineer_notification.id DESC
        ''')
        activity=activity_tracker.objects.all().order_by('-id')[:5]
        context={
            'department':department,
            'engineer':engineer,
            'equipment':equip,
            'service':service,
            'activities':activity,
            'notification':noti
        }
        return render(request,'admin/Shome.html',context)

    def add_department(self, request):
        if request.method=="POST":
            dept_name=request.POST['dept_name']
            if  Department.objects.filter(department_name=dept_name).exists()==False:
                d1=Department(department_name=dept_name)
                d1.save()
                messages.success(request,"Department Addded Successfully")
            else:
                dept_id=request.POST['dept_id']
                dept=Department.objects.filter(id=dept_id).update(department_name=dept_name)
                messages.success(request,"Department Updated Successfully")
            request.method="GET"
            return MyAdminSite.index(self,request)
        else:
            department=Department.objects.all()
            return render(request,"admin/add_department.html",{'department':department})


    def add_equipment(self,request):
        if request.method=="POST":
            equip_name=request.POST['name']
            equip_doi=request.POST['doi']
            dept_id=request.POST['dept_id']
            equip_det=request.POST['details']
            e=equipment(equipment_name=equip_name,department_id=dept_id,equipment_doi=equip_doi,equipment_details=equip_det)
            e.save()
            messages.success(request,"Equipment Added Successfully")
            request.method="GET"
            return MyAdminSite.index(self,request)
        else:
            equip=equipment.objects.all()
            department=Department.objects.all()
            return render(request,"admin/add_equipment.html",{'equip':equip,'department':department})
    
    def add_engineer(self,request):
        engineer=User.objects.filter(is_staff=False)
        if request.method=="POST":
            firstname=request.POST['firstname']
            lastname=request.POST['lastname']
            username=request.POST['user_name']
            pwd=request.POST['pwd']
            if User.objects.filter(username=username).exists()==False:
                user=User.objects.create_user(username=username,first_name=firstname,last_name=lastname,password=pwd)
                user.save()
                messages.success(request,"Engineer Account Created Successfully")
                request.method="GET"
                return MyAdminSite.index(self,request)
            else:
                messages.warning(request,"User_name Already taken")
                return render(request,'admin/add_engineer.html',{'engineer':engineer})
        else:
            return render(request,"admin/add_engineer.html",{'engineer':engineer})

    def update_engineer(self,request,id):
        if request.method=="POST":
            username=request.POST['eng_username']
            firstname=request.POST['eng_firstname']
            lastname=request.POST['eng_lastname']
            password=request.POST['eng_password']
            user=User.objects.filter(username=username).update(first_name=firstname,last_name=lastname,password=password)
            messages.success(request,"Details Updated Sucessfully")
            request.method="GET"
            return MyAdminSite.index(self,request)
        else:
            user=User.objects.filter(id=id,is_staff=False)
            if user is not None:
                return render(request,'admin/update_engineer.html',{'user':user})
            else:
                 return render(request,'admin/Shome.html')

    def qrcode(self,request,id):
        qr=qrcode.QRCode(version=1,box_size=15,border=10)
        data='airport_'+str(id)
        qr.add_data(data)
        qr.make(fit=True)
        img=qr.make_image(fill='black',back_color='white')
        img.save('test.png')
        image=Image.open('test.png')
        draw = ImageDraw.Draw(image)
        font = ImageFont.truetype('arial.ttf', size=45)    
        (x, y) = (150, 50)
        message = "Id :"+data
        color = 'rgb(0, 0, 0)'
        draw.text((x, y), message, fill=color, font=font)
        image.save('test.png')
        with open('C:\\Users\\admin\\iMaintain\\test.png','rb') as f:
            if f:
                response = HttpResponse(f.read(), content_type='image/force-download')
                filename = "Qrcode_%s.jpg" %(id)
                content = "inline; filename={}".format(filename)
                download = request.GET.get("download")
                if download:
                    content = "attachment; filename='%s'" %(filename)
                response['Content-Disposition'] = content
                return response
            return HttpResponse("Not found")



        

admin_site = MyAdminSite()
admin.site=admin_site
