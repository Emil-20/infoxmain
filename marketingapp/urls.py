from django.urls import re_path
from . import views

urlpatterns = [
    # Marketing TL

    # My tasks

    # re_path(r'^$', views.index),
    re_path(r'^marketingTL_dashboard$', views.marketingTL_dash, name="marketingTL_dashboard"),
    re_path(r'^mytasks$', views.marketingTL_mytasks, name="marketingTL_mytasks"),
    re_path(r'^products$', views.marketingTL_products, name="marketingTL_products"),
    re_path(r'^product_details$', views.marketingTL_productdet, name="marketingTL_productdet"),  
    re_path(r'^recruitments$', views.marketingTL_recruitments, name="marketingTL_recruitments"),
    re_path(r'^recruitment_details$', views.marketingTL_recdet, name="marketingTL_recdet"),        

    # Shared tasks  

    re_path(r'^sharedtasks$', views.marketingTL_sharedtasks, name="marketingTL_sharedtasks"),
    re_path(r'^shared_products$', views.marketingTL_sharedproducts, name="marketingTL_sharedproducts"),    
    re_path(r'^shared_productdetails$', views.marketingTL_Sproductdet, name="marketingTL_Sproductdet"),
    re_path(r'^view_productdata', views.marketingTL_productdata, name="marketingTL_productdata"),   
    re_path(r'^shared_recruitments$', views.marketingTL_sharedrecruitments, name="marketingTL_sharedrecruitments"),    
    re_path(r'^shared_recruitmentdetails$', views.marketingTL_Srecdet, name="marketingTL_Srecdet"),
    re_path(r'^view_recruitmentdata', views.marketingTL_recdata, name="marketingTL_recdata"),        
    
    # Reports

    re_path(r'^report_issue$', views.marketingTL_reportissue, name="marketingTL_reportissue"),
    re_path(r'^reported_issues$', views.marketingTL_reportedissues, name="marketingTL_reportedissues"),
    re_path(r'^view_reportedissue$', views.marketingTL_viewissue, name="marketingTL_viewissue"),

    # Attendance
    
    re_path(r'^give_attendance$', views.marketingTL_giveattendance, name="marketingTL_giveattendance"),
    re_path(r'^view_attendance$', views.marketingTL_viewattendance, name="marketingTL_viewattendance"),     
    re_path(r'^show_attendance$', views.marketingTL_showattendance, name="marketingTL_showattendance"),  

    # Data Collector   

    re_path(r'^dc_dash$', views.dc_dash, name="dc_dash"),

    # Tasks

    re_path(r'^dc_mytasks$', views.dc_mytasks, name="dc_mytasks"),
    re_path(r'^dc_products$', views.dc_products, name="dc_products"),    
    re_path(r'^dc_productdet$', views.dc_productdet, name="dc_productdet"),
    re_path(r'^collect_productdata$', views.collect_productdata, name="collect_productdata"),       
    re_path(r'^dc_recruitments$', views.dc_recruitments, name="dc_recruitments"),    
    re_path(r'^dc_recdet$', views.dc_recdet, name="dc_recdet"),
    re_path(r'^collect_recdata$', views.collect_recdata, name="collect_recdata"),   

    # Reports

    re_path(r'^dc_reportissue$', views.dc_reportissue, name="dc_reportissue"),
    re_path(r'^dc_reportedissues$', views.dc_reportedissues, name="dc_reportedissues"),
    re_path(r'^dc_viewissue$', views.dc_viewissue, name="dc_viewissue"),     

    #Attendance

    re_path(r'^dc_viewattendance$', views.dc_viewattendance, name="dc_viewattendance"),
    re_path(r'^dc_showattendance$', views.dc_showattendance, name="dc_showattendance"),     


    # Marketing Executive

    re_path(r'^exec_dash$', views.exec_dash, name="exec_dash"),

    # Tasks

    re_path(r'^exec_mytasks$', views.exec_mytasks, name="exec_mytasks"),
    re_path(r'^exec_products$', views.exec_products, name="exec_products"),    
    re_path(r'^exec_productdet$', views.exec_productdet, name="exec_productdet"),
    re_path(r'^exec_productdata$', views.exec_productdata, name="exec_productdata"),       
    re_path(r'^exec_recruitments$', views.exec_recruitments, name="exec_recruitments"),    
    re_path(r'^exec_recdet$', views.exec_recdet, name="exec_recdet"),
    re_path(r'^exec_recdata$', views.exec_recdata, name="exec_recdata"),   

    # Reports

    re_path(r'^exec_reportissue$', views.exec_reportissue, name="exec_reportissue"),
    re_path(r'^exec_reportedissues$', views.exec_reportedissues, name="exec_reportedissues"),
    re_path(r'^exec_viewissue$', views.exec_viewissue, name="exec_viewissue"),     

    #Attendance

    re_path(r'^exec_viewattendance$', views.exec_viewattendance, name="exec_viewattendance"),    
    re_path(r'^exec_showattendance$', views.exec_showattendance, name="exec_showattendance"),      
    ]

