﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-Services.aspx.cs" Inherits="Admin_Services" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin-Services</title>

    <!-- gridviewdesign -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/css/footable.min.css"
    rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery-footable/0.1.0/js/footable.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $('[id*=GridView1]').footable();
        });
    </script>
    <!-- gridviewdesign -->

    <!-- Bootstrap Core CSS -->
    <link href="Admin/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="Admin/css/metisMenu.min.css" rel="stylesheet">

    <!-- Timeline CSS -->
    <link href="Admin/css/timeline.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="Admin/css/startmin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="Admin/css/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="Admin/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">El Marfin Hotel and Pavilion</a>
        </div>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>

        <!-- Top Navigation: Left Menu -->
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="index.aspx" target="_blank"><i class="fa fa-home fa-fw"></i> Website</a></li>
        </ul>

        <!-- Top Navigation: Right Menu -->
        <ul class="nav navbar-right navbar-top-links">
           <li><a href="Login.aspx"</a><i class="fa fa-sign-out fa-fw"></i> Logout</a></li>
        </ul>

        <!-- Sidebar -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">

                <ul class="nav" id="side-menu">
                    <li>
                        <a href="Admin.aspx"><i class="fa fa-black-tie fa-fw"></i> Admin</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-user fa-fw"></i> Accounts<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Admin-Account.aspx">Admin Account</a>
                            </li>
                            <li>
                                <a href="User-Account.aspx">User Accounts</a>
                            </li> 
                        </ul>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-pie-chart fa-fw"></i> Content Management<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="Admin-Homepage.aspx">Homepage</a>
                            </li>
                            <li>
                                <a href="Admin-Gallery.aspx">Gallery</a>
                            </li>
                            <li>
                                <a href="Admin-Inquiry.aspx">Inquiry</a>
                            </li>
                            <li>
                                <a href="Admin-About.aspx">About</a>
                            </li>
                            <li>
                                <a href="#" class="active">Services</a>
                            </li>
                            <li>
                                <a href="#">Accounts <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="Admin-Account.aspx">Admin Account</a>
                                    </li>
                                    <li>
                                        <a href="User-Account.aspx">User Accounts</a>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                </ul>

            </div>
        </div>
    </nav>

    <!-- Page Content -->
    <div id="page-wrapper">
        <div class="container-fluid">

            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">El Marfin Hotel and Pavilion</h1>
                </div>
            </div>
            <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
            <!-- ... Your content goes here ... -->
            <div class="panel-heading">
               Services
            </div>   
                            
                                
                                
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- jQuery -->
<script src="Admin/js/jquery.min.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="Admin/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="Admin/js/metisMenu.min.js"></script>

<!-- Custom Theme JavaScript -->
<script src="Admin/js/startmin.js"></script>

</body>
</html>
