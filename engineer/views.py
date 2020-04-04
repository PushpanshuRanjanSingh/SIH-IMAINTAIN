from django.shortcuts import render,redirect
from django.http import HttpResponse,JsonResponse
from django.template.loader import get_template
from .Report import render_to_pdf 
from random import randint
from datetime import date,datetime
from django.contrib import messages
from django.contrib.auth.models import User,auth
from django.contrib.auth.decorators import login_required
from .models import activity_tracker,equipment,Service,notification,Department


# Create your views here.
check=0
def login(request):
    if request.method=="POST":
        username=request.POST["eng_username"]
        password=request.POST["eng_pass"]
        user=auth.authenticate(username=username,password=password)
        if user is not None:
            auth.login(request,user)
            return redirect('home')
        else:
            messages.error(request,"Invalid username or Password")
            return redirect('/')
        
    else:
        return render(request,'login.html')
    


@login_required
def logout(request):
    auth.logout(request)
    return redirect('/')
    
@login_required
def activity(request):
    a=activity_tracker.objects.all()
    context={
        'activities':a
    }
    return render(request,'activity.html',context)


@login_required
def home(request):
    notifi=notification.objects.all()
    print(len(notifi))
    context={
        'notifications':notifi

    }
    return render(request,'home.html',context)


@login_required
def equipments(request,id):
    if request.method=="POST":
        equi_id=request.POST['equipment_id']
        curr_date=request.POST['date']
        status=request.POST['status']
        remark=request.POST['remark']
        print(equi_id,curr_date,status,remark)
        if status:
            ename=equipment.objects.get(id=id).equipment_name
            s=Service(equipment_id=equi_id,service_date=curr_date,service_status=status,service_remark=remark)
            s.save()
            atitle="{0} (ID {1}) Updated service of {2} (Equipment ID {3}) ".format(request.user.username,request.user.id,ename,id)
            adate=date.today()
            atime=datetime.now().strftime("%H:%M:%S")
            a=activity_tracker(activity_title=atitle,activity_date=adate,activity_time=atime)
            a.save()
            messages.info(request,'Service Updated Sucessfully')
            return redirect('home')
        else:
            return redirect('')
    else:
        e=equipment.objects.filter(id=id)
        ename=equipment.objects.get(id=id).equipment_name
        s=Service.objects.raw('''SELECT engineer_service.id as service_id,auth_user.username,engineer_service.service_date,engineer_equipment.id,engineer_equipment.equipment_name,auth_user.id as user_id FROM engineer_service
        JOIN auth_user ON auth_user.id=engineer_service.equipment_id
        JOIN engineer_equipment ON engineer_equipment.id=engineer_service.equipment_id
        ORDER BY engineer_service.id DESC Limit 3
        ''')
        if len(e):
            ran=randint(1,6)
            context={
                'i':id,
                'e':e,
                'ran':ran,
                'services':s
            }
            check=request.session.get('check')
            if check:
                atitle="{0} (ID {1}) Scanned QR CODE of {2} (Equipment ID {3}) ".format(request.user.username,request.user.id,ename,id)
                adate=date.today()
                atime=datetime.now().strftime("%H:%M:%S")
                a=activity_tracker(activity_title=atitle,activity_date=adate,activity_time=atime)
                a.save()
                request.session['check']=0
            return render(request,'equipment.html',context)
        else:
            return redirect('scanner')



@login_required
def scanner(request):
    request.session['check']=1
    return render(request,'scanner.html')


@login_required
def history(request,id):
    s=Service.objects.raw('''SELECT engineer_service.id as service_id,auth_user.username,engineer_service.service_date,engineer_equipment.id,engineer_equipment.equipment_name,auth_user.id as user_id FROM engineer_service
        JOIN auth_user ON auth_user.id=engineer_service.equipment_id
        JOIN engineer_equipment ON engineer_equipment.id=engineer_service.equipment_id
        ORDER BY engineer_service.id DESC 
        ''')
    context={
        'services':s
    }
    return render(request,'history.html',context)





@login_required
def downloadsinglereport(request,id):
    template = get_template('EReport.html')
    service=Service.objects.raw('''SELECT auth_user.username,engineer_service.service_date,engineer_service.service_status,auth_user.id,engineer_equipment.equipment_name,engineer_service.service_remark FROM engineer_service
        JOIN auth_user ON auth_user.id=engineer_service.equipment_id and engineer_service.id=%s
        JOIN engineer_equipment ON engineer_equipment.id=engineer_service.equipment_id
        ORDER BY engineer_service.id 
        '''%id)
    print(service)

    context = {
           'service':service
        }
    html = template.render(context)
    pdf = render_to_pdf('EReport.html', context)
    if pdf:
        response = HttpResponse(pdf, content_type='application/force-download')#x-pdf
        filename = "EReport_%s.pdf" %("12341231")
        content = "inline; filename={}".format(filename)
        print(content)
        download = request.GET.get("download")
        if download:
            content = "attachment; filename='%s'" %(filename)
        response['Content-Disposition'] = content
        return response
    return HttpResponse("Not found")

#verify credetials
# def check_login(request):
#     userid=request.POST['id']
#     password=request.POST['pass']
#     print(userid,password)
#     user=get_object_or_404(User,pk=userid)
#     authi=auth.authenticate(username=user,password=password)
    
#     if authi is not None:
#         auth.login(request,authi)
#         request.session['eng-id']=userid
#         request.session['eng_name']=user.username
#         return HttpResponse(1)

#     else:
#         return HttpResponse(2)

#Is user Logged in 
