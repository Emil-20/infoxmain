from django.http import request
from django.shortcuts import render

# Create your views here.

#Marketing TL

def index(request):
    return render(request,'index.html')

def marketingTL_dash(request):
    return render(request, 'marketing/marketingTL_dash.html')

# Marketing TL - My tasks

def marketingTL_mytasks(request):
    return render(request, 'marketing/marketingTL_mytasks.html')    

def marketingTL_products(request):
    return render(request, 'marketing/marketingTL_Mproductlist.html')

def marketingTL_productdet(request):
    return render(request, 'marketing/marketingTL_Mproductdetails.html')    

def marketingTL_recruitments(request):
    return render(request, 'marketing/marketingTL_Mreclist.html')

def marketingTL_recdet(request):
    return render(request, 'marketing/marketingTL_Mrecdetails.html')    

# Marketing TL - Shared tasks

def marketingTL_sharedtasks(request):
    return render(request, 'marketing/marketingTL_sharedtasks.html')    

def marketingTL_sharedproducts(request):
    return render(request, 'marketing/marketingTL_Sproductlist.html')    

def marketingTL_Sproductdet(request):
    return render(request, 'marketing/marketingTL_Sproductdetails.html')      

def marketingTL_productdata(request):
    return render(request, 'marketing/marketingTL_productdata.html')     

def marketingTL_sharedrecruitments(request):
    return render(request, 'marketing/marketingTL_Sreclist.html')

def marketingTL_Srecdet(request):
    return render(request, 'marketing/marketingTL_Srecdetails.html')   

def marketingTL_recdata(request):
    return render(request, 'marketing/marketingTL_recdata.html')     

# Report issue    

def marketingTL_reportissue(request):
    return render(request, 'marketing/marketingTL_reportissue.html')    

def marketingTL_reportedissues(request):
    return render(request, 'marketing/marketingTL_reportedlist.html')  

def marketingTL_viewissue(request):
    return render(request, 'marketing/marketingTL_viewissue.html') 

# Attendance    

def marketingTL_giveattendance(request):
    return render(request, 'marketing/marketingTL_giveattendance.html') 

def marketingTL_viewattendance(request):
    return render(request, 'marketing/marketingTL_viewattendance.html')     

def marketingTL_showattendance(request):
    return render(request, 'marketing/marketingTL_viewattendance1.html') 



# Data Collector

def dc_dash(request):
    return render(request, 'marketing/datacollector_dash.html')
 


# Tasks

def dc_mytasks(request):
    return render(request, 'marketing/datacollector_tasks.html')  

def dc_products(request):
    return render(request, 'marketing/datacollector_productlist.html')

def dc_productdet(request):
    return render(request, 'marketing/datacollector_productdetails.html')

def collect_productdata(request):
    return render(request, 'marketing/datacollector_productdata.html')


def dc_recruitments(request):
    return render(request, 'marketing/datacollector_reclist.html')

def dc_recdet(request):
    return render(request, 'marketing/datacollector_recdetails.html')

def collect_recdata(request):
    return render(request, 'marketing/datacollector_recdata.html')    


# Reports

def dc_reportissue(request):
    return render(request, 'marketing/datacollector_reportissue.html')    

def dc_reportedissues(request):
    return render(request, 'marketing/datacollector_reportedlist.html')  

def dc_viewissue(request):
    return render(request, 'marketing/datacollector_viewissue.html') 

# Attendance    

def dc_viewattendance(request):
    return render(request, 'marketing/datacollector_viewattendance.html')       

def dc_showattendance(request):
    return render(request, 'marketing/datacollector_viewattendance1.html') 


# Marketing Executive

def exec_dash(request):
    return render(request, 'marketing/exec_dash.html')
 


# Tasks

def exec_mytasks(request):
    return render(request, 'marketing/exec_tasks.html')  

def exec_products(request):
    return render(request, 'marketing/exec_productlist.html')

def exec_productdet(request):
    return render(request, 'marketing/exec_productdet.html')

def exec_productdata(request):
    return render(request, 'marketing/exec_productdata.html')


def exec_recruitments(request):
    return render(request, 'marketing/exec_reclist.html')

def exec_recdet(request):
    return render(request, 'marketing/exec_recdet.html')

def exec_recdata(request):
    return render(request, 'marketing/exec_recdata.html')    


# Reports

def exec_reportissue(request):
    return render(request, 'marketing/exec_reportissue.html')    

def exec_reportedissues(request):
    return render(request, 'marketing/exec_reportedlist.html')  

def exec_viewissue(request):
    return render(request, 'marketing/exec_viewissue.html') 

# Attendance    

def exec_viewattendance(request):
    return render(request, 'marketing/exec_viewattendance.html')      

def exec_showattendance(request):
    return render(request, 'marketing/exec_viewattendance1.html') 