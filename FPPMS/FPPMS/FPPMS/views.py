import re
from FPPMS.models import Proposalmodel
from FPPMS.serialize import Proposalserialize
from rest_framework.response import Response
from rest_framework import status
from rest_framework.decorators import api_view
import requests
from django.shortcuts import render
from django.contrib import messages
from django.core.mail import send_mail
from django.db import connection
from FPPMS.settings import EMAIL_HOST_USER
from django.core.files.storage import FileSystemStorage
from django.http import HttpResponseRedirect

from django.shortcuts import redirect, render
from django.http import JsonResponse
from django.utils.datastructures import MultiValueDictKeyError
from django.contrib import messages




@api_view(['POST'])
def saveproposal(request):
    #print("tesing")
    try:
        if request.method=="POST" :
            # request.FILES['document'].is_valid():
                #print(request.FILES['document'].name)
                saveserialize=Proposalserialize(data=request.data)
                #print(request.FILES['document'].read())
                myfile = request.FILES[' ']
                fs = FileSystemStorage()
                filename = fs.save(myfile.name, myfile)
                document = filename
                # print(document)
                if saveserialize.is_valid():
                    saveserialize.save()
                    # return Response(saveserialize.data,status=status.HTTP_201_CREATED)
                    # return HttpResponseRedirect(request.path_info)
                    #messages.info(request, 'Proposal was submitted successfully!')
                    messages.success(request,'Your proposal was successfully sent! You will be contacted regarding the proposal soon.')
                    emails = prepareEmailForSenders()
                    sub , msg = getEmailBody()
                    for email in emails:
                        send_mail(sub,msg,"Fanshawe BIA Project Proposal",[email],fail_silently=False)
                    return render(request,'index.html')
                return Response(saveserialize.errors,status=status.HTTP_400_BAD_REQUEST)
    except MultiValueDictKeyError :
        saveserialize=Proposalserialize(data=request.data)
        if saveserialize.is_valid():
            saveserialize.save()
                    # return Response(saveserialize.data,status=status.HTTP_201_CREATED)
                    # return HttpResponseRedirect(request.path_info)
           # messages.info(request, 'Proposal submitted successfully!')
            messages.success(request,'Your proposal was successfully sent! You will be contacted regarding the proposal soon.')
            emails = prepareEmailForSenders()
            sub , msg = getEmailBody()
            for email in emails:
                send_mail(sub,msg,"Fanshawe BIA Project Proposal",[email],fail_silently=False)
            return render(request,'index.html')
        return Response(saveserialize.errors,status=status.HTTP_400_BAD_REQUEST)




def insertproposal(request):
    if request.method=="POST":

        title=request.POST.get('title')
        fname=request.POST.get('fname')
        lname=request.POST.get('lname')
        phone=request.POST.get('phone')
        email=request.POST.get('email')
        userType=request.POST.get('userType')
        status=request.POST.get('status')
        ptitle=request.POST.get('ptitle')
        pwebsite=request.POST.get('pwebsite')
        pdesc=request.POST.get('pdesc')
        comment=request.POST.get('comment')
        reference=request.POST.get('reference')
        document=request.POST.get('document')
        # document=request.FILES['document']
        # myfile = request.FILES['document']
        # print(myfile.name)
        # fs = FileSystemStorage()
        # filename = fs.save(myfile.name, myfile)

        # document = fs.url(filename)

        data={'title':title,'fname':fname,'lname':lname,'phone':phone,'email':email,'userType':userType,'status':status,'ptitle':ptitle,'pdesc':pdesc,'pwebsite':pwebsite,'comment':comment,'reference':reference,'document':document}
        saveserialize=Proposalserialize(data=data)


        if saveserialize.is_valid():

            headers={'Content-Type': 'application/json'}
            #read = saveserialize.save()

            read=requests.post('https://fppms.pythonanywhere.com/Insertproposal',json=data,headers=headers)
            if(read):
                messages.success(request,'Your proposal was successfully sent! You will be contacted regarding the proposal soon.')
                emails = prepareEmailForSenders()
                sub , msg = getEmailBody()
                for email in emails:
                    send_mail(sub,msg,"Fanshawe BIA Project Proposal",[email],fail_silently=False)
                #return render(request,'index.html')
               # messages.success(request,'Your proposal was successfully registered!')
                return render(request,'index.html')
                #return HttpResponseRedirect(request.path_info)
            else:
                messages.error(request,'INVALID Data!')
                return render(request,'index.html')
        else:
            messages.error(request,'Sorry, data not saving!')
            return render(request,'index.html')

    else:
        return render(request,'index.html')

def getProjectDetails():
    with connection.cursor() as cursor:
        cursor.execute("SELECT title, concat(fname ,' ', lname) FROM `proposals` as p order by p.id desc")
        row = cursor.fetchone()
    return row

def getEmailBody():
    row = getProjectDetails()
    msg = 'Dear Project Proposal Admin,\r\n\nA new Fanshawe BIA project proposal has been submitted in the system by '+row[1] + '.\r\n\nPlease access the admin area https://fppms.pythonanywhere.com/adminlogin/login_user? to view it. \r\n\nRegards,\r\nFanshawe Project Proposal\r\nhttps://fanshaweprojectproposals.ca'
    title  = 'New BIA Project Proposal Received : ' +row[0]
    return title, msg

def my_custom_sql():
    with connection.cursor() as cursor:
        cursor.execute("SELECT email FROM `auth_user` where is_superuser = 1")
        rows = cursor.fetchall()
    return rows

def prepareEmailForSenders():
    rows = my_custom_sql()
    emails = list()
    for sig in rows:
        emails.append(sig[0])
    return emails


def aboutus(request):
    return render(request, "GetToKnowUs.html")

def faq(request):
    return render(request, "FAQ.html")