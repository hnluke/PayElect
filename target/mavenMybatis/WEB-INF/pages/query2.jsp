<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>SB Admin 2 - Bootstrap Admin Theme</title>
    <base href="<%=basePath%>">
    <script src="<%=basePath%>js/jquery-3.4.1.js"></script>
    <script src="<%=basePath%>My97DatePicker/WdatePicker.js"></script>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- MetisMenu CSS -->
    <link href="vendor/metisMenu/metisMenu.min.css" rel="stylesheet">

    <!-- DataTables CSS -->
    <link href="vendor/datatables-plugins/dataTables.bootstrap.css" rel="stylesheet">

    <!-- DataTables Responsive CSS -->
    <link href="vendor/datatables-responsive/dataTables.responsive.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="dist/css/sb-admin-2.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">


</head>

<body>

<div id="wrapper">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">SB Admin v2.0</a>
        </div>
        <!-- /.navbar-header -->

        <ul class="nav navbar-top-links navbar-right">
<%--            <li class="dropdown">--%>
<%--                <a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
<%--                    <i class="fa fa-envelope fa-fw"></i> <i class="fa fa-caret-down"></i>--%>
<%--                </a>--%>
<%--                <ul class="dropdown-menu dropdown-messages">--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <strong>John Smith</strong>--%>
<%--                                <span class="pull-right text-muted">--%>
<%--                                        <em>Yesterday</em>--%>
<%--                                    </span>--%>
<%--                            </div>--%>
<%--                            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <strong>John Smith</strong>--%>
<%--                                <span class="pull-right text-muted">--%>
<%--                                        <em>Yesterday</em>--%>
<%--                                    </span>--%>
<%--                            </div>--%>
<%--                            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <strong>John Smith</strong>--%>
<%--                                <span class="pull-right text-muted">--%>
<%--                                        <em>Yesterday</em>--%>
<%--                                    </span>--%>
<%--                            </div>--%>
<%--                            <div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque eleifend...</div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a class="text-center" href="#">--%>
<%--                            <strong>Read All Messages</strong>--%>
<%--                            <i class="fa fa-angle-right"></i>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
                <!-- /.dropdown-messages -->
<%--            </li>--%>
            <!-- /.dropdown -->
<%--            <li class="dropdown">--%>
<%--                <a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
<%--                    <i class="fa fa-tasks fa-fw"></i> <i class="fa fa-caret-down"></i>--%>
<%--                </a>--%>
<%--                <ul class="dropdown-menu dropdown-tasks">--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <p>--%>
<%--                                    <strong>Task 1</strong>--%>
<%--                                    <span class="pull-right text-muted">40% Complete</span>--%>
<%--                                </p>--%>
<%--                                <div class="progress progress-striped active">--%>
<%--                                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">--%>
<%--                                        <span class="sr-only">40% Complete (success)</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <p>--%>
<%--                                    <strong>Task 2</strong>--%>
<%--                                    <span class="pull-right text-muted">20% Complete</span>--%>
<%--                                </p>--%>
<%--                                <div class="progress progress-striped active">--%>
<%--                                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100" style="width: 20%">--%>
<%--                                        <span class="sr-only">20% Complete</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <p>--%>
<%--                                    <strong>Task 3</strong>--%>
<%--                                    <span class="pull-right text-muted">60% Complete</span>--%>
<%--                                </p>--%>
<%--                                <div class="progress progress-striped active">--%>
<%--                                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">--%>
<%--                                        <span class="sr-only">60% Complete (warning)</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <p>--%>
<%--                                    <strong>Task 4</strong>--%>
<%--                                    <span class="pull-right text-muted">80% Complete</span>--%>
<%--                                </p>--%>
<%--                                <div class="progress progress-striped active">--%>
<%--                                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">--%>
<%--                                        <span class="sr-only">80% Complete (danger)</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a class="text-center" href="#">--%>
<%--                            <strong>See All Tasks</strong>--%>
<%--                            <i class="fa fa-angle-right"></i>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--                <!-- /.dropdown-tasks -->--%>
<%--            </li>--%>
            <!-- /.dropdown -->
<%--            <li class="dropdown">--%>
<%--                <a class="dropdown-toggle" data-toggle="dropdown" href="#">--%>
<%--                    <i class="fa fa-bell fa-fw"></i> <i class="fa fa-caret-down"></i>--%>
<%--                </a>--%>
<%--                <ul class="dropdown-menu dropdown-alerts">--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <i class="fa fa-comment fa-fw"></i> New Comment--%>
<%--                                <span class="pull-right text-muted small">4 minutes ago</span>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <i class="fa fa-twitter fa-fw"></i> 3 New Followers--%>
<%--                                <span class="pull-right text-muted small">12 minutes ago</span>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <i class="fa fa-envelope fa-fw"></i> Message Sent--%>
<%--                                <span class="pull-right text-muted small">4 minutes ago</span>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <i class="fa fa-tasks fa-fw"></i> New Task--%>
<%--                                <span class="pull-right text-muted small">4 minutes ago</span>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a href="#">--%>
<%--                            <div>--%>
<%--                                <i class="fa fa-upload fa-fw"></i> Server Rebooted--%>
<%--                                <span class="pull-right text-muted small">4 minutes ago</span>--%>
<%--                            </div>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                    <li class="divider"></li>--%>
<%--                    <li>--%>
<%--                        <a class="text-center" href="#">--%>
<%--                            <strong>See All Alerts</strong>--%>
<%--                            <i class="fa fa-angle-right"></i>--%>
<%--                        </a>--%>
<%--                    </li>--%>
<%--                </ul>--%>
<%--                <!-- /.dropdown-alerts -->--%>
<%--            </li>--%>
            <!-- /.dropdown -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i> <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                    </li>
                </ul>
                <!-- /.dropdown-user -->
            </li>
            <!-- /.dropdown -->
        </ul>
        <!-- /.navbar-top-links -->

        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
<%--                    <li class="sidebar-search">--%>
<%--                        <div class="input-group custom-search-form">--%>
<%--                            <input type="text" class="form-control" placeholder="Search...">--%>
<%--                            <span class="input-group-btn">--%>
<%--                                <button class="btn btn-default" type="button">--%>
<%--                                    <i class="fa fa-search"></i>--%>
<%--                                </button>--%>
<%--                            </span>--%>
<%--                        </div>--%>
<%--                        <!-- /input-group -->--%>
<%--                    </li>--%>
                    <li>
                        <a href="mag/query"><i class="fa fa-dashboard fa-fw"></i>电费综合查询</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="flot.html">Flot Charts</a>
                            </li>
                            <li>
                                <a href="morris.html">Morris.js Charts</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="tables.html"><i class="fa fa-table fa-fw"></i> Tables</a>
                    </li>
                    <li>
                        <a href="pay/payElec"><i class="fa fa-edit fa-fw"></i> Forms</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="panels-wells.html">Panels and Wells</a>
                            </li>
                            <li>
                                <a href="buttons.html">Buttons</a>
                            </li>
                            <li>
                                <a href="notifications.html">Notifications</a>
                            </li>
                            <li>
                                <a href="typography.html">Typography</a>
                            </li>
                            <li>
                                <a href="icons.html"> Icons</a>
                            </li>
                            <li>
                                <a href="grid.html">Grid</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="#">Second Level Item</a>
                            </li>
                            <li>
                                <a href="#">Second Level Item</a>
                            </li>
                            <li>
                                <a href="#">Third Level <span class="fa arrow"></span></a>
                                <ul class="nav nav-third-level">
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level Item</a>
                                    </li>
                                </ul>
                                <!-- /.nav-third-level -->
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="blank.html">Blank Page</a>
                            </li>
                            <li>
                                <a href="login.html">Login Page</a>
                            </li>
                        </ul>
                        <!-- /.nav-second-level -->
                    </li>
                </ul>
            </div>
            <!-- /.sidebar-collapse -->
        </div>
        <!-- /.navbar-static-side -->
    </nav>

    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header" style="font-size: 20px">电费缴纳明细</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        明细表
                    </div>
                    <!-- /.panel-heading -->
                    <div class="panel-body" >
                        <div>
                            <form id = "formQuery"  action="pay/payElecHandle" method="post" >

                                <table border="0" cellspacing="" cellpadding="" width="90%" align="center">
                                    <tr>
                                        <td>户号:</td>
                                        <td><input type="text" name="userNo" style="width: 100px" autocomplete="off"></td>
                                        <td>户主姓名:</td>
                                        <td><input type="text" name="userName" style="width: 100px" autocomplete="off"/></td>
                                        <%--            <td><input type="text" class="myClass" name="enpCreateTime" onclick="WdatePicker()"/></td>--%>


                                        <td>资金渠道</td>
                                        <td>
                                            <select name="payChannelId">
                                                <option value="0">请选择</option>
                                                <option value="1">营业厅</option>
                                                <option value="2">银行代缴</option>
                                                <option value="3">支付宝</option>
                                                <option value="4">微信</option>
                                            </select>
                                        </td>
                                        <td>所属片区</td>
                                        <td>
                                            <select name="payAreaId">
                                                <option value="0">请选择</option>
                                                <option value="1">一栋</option>
                                                <option value="2">二栋</option>
                                                <option value="3">三栋</option>
                                                <option value="4">四栋</option>
                                                <option value="5">五栋</option>
                                            </select>
                                        </td>


                                        <td>缴纳日期</td>
                                        <td><input type="text" class="myClass" name="payDate" onclick="WdatePicker()" autocomplete="off"/></td>
                                        <td><input type="submit" id="query" value="查询" /></td>


                                    </tr>

                                </table>
                            </form>

                        </div>
                        <hr>
                        <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                            <thead>
                            <tr>
                                <th>序号</th>
                                <th>户号</th>
                                <th>户主姓名</th>
                                <th>缴纳金额</th>
                                <th>缴纳年月</th>
                                <th>资金渠道</th>
                                <th>所属片区</th>

                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="quy" items="${query_list}" >
                                <c:set var="payDate" value="${quy.payDate}" />
                                <tr class="odd gradeX">
                                    <td>${quy.payId}</td>
                                    <td>${quy.users.userNo}</td>
                                    <td>${quy.users.userName}</td>
                                    <td>${quy.payAccount}</td>
                                    <td>
                                        <fmt:formatDate type="date" value="${payDate}" />

                                    </td>
                                    <td class="center">${quy.channel.chnName}</td>
                                    <td class="center">${quy.area.areaName}</td>
                                </tr>
                            </c:forEach>

                            </tbody>

                        </table>
                        <!-- /.table-responsive -->
                        <div class="well">
                            <h4>DataTables Usage Information</h4>
                            <p>DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are using a specialized version of DataTables built for Bootstrap 3. We have also customized the table headings to use Font Awesome icons in place of images. For complete documentation on DataTables, visit their website at <a target="_blank" href="https://datatables.net/">https://datatables.net/</a>.</p>
                            <a class="btn btn-default btn-lg btn-block" target="_blank" href="https://datatables.net/">View DataTables Documentation</a>
                        </div>
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
<%--        <div class="row">--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="panel panel-default">--%>
<%--                    <div class="panel-heading">--%>
<%--                        Kitchen Sink--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-heading -->--%>
<%--                    <div class="panel-body">--%>
<%--                        <div class="table-responsive">--%>
<%--                            <table class="table table-striped table-bordered table-hover">--%>
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th>#</th>--%>
<%--                                    <th>First Name</th>--%>
<%--                                    <th>Last Name</th>--%>
<%--                                    <th>Username</th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr>--%>
<%--                                    <td>1</td>--%>
<%--                                    <td>Mark</td>--%>
<%--                                    <td>Otto</td>--%>
<%--                                    <td>@mdo</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>2</td>--%>
<%--                                    <td>Jacob</td>--%>
<%--                                    <td>Thornton</td>--%>
<%--                                    <td>@fat</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>3</td>--%>
<%--                                    <td>Larry</td>--%>
<%--                                    <td>the Bird</td>--%>
<%--                                    <td>@twitter</td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                        <!-- /.table-responsive -->--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-body -->--%>
<%--                </div>--%>
<%--                <!-- /.panel -->--%>
<%--            </div>--%>
<%--            <!-- /.col-lg-6 -->--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="panel panel-default">--%>
<%--                    <div class="panel-heading">--%>
<%--                        Basic Table--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-heading -->--%>
<%--                    <div class="panel-body">--%>
<%--                        <div class="table-responsive">--%>
<%--                            <table class="table">--%>
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th>#</th>--%>
<%--                                    <th>First Name</th>--%>
<%--                                    <th>Last Name</th>--%>
<%--                                    <th>Username</th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr>--%>
<%--                                    <td>1</td>--%>
<%--                                    <td>Mark</td>--%>
<%--                                    <td>Otto</td>--%>
<%--                                    <td>@mdo</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>2</td>--%>
<%--                                    <td>Jacob</td>--%>
<%--                                    <td>Thornton</td>--%>
<%--                                    <td>@fat</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>3</td>--%>
<%--                                    <td>Larry</td>--%>
<%--                                    <td>the Bird</td>--%>
<%--                                    <td>@twitter</td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                        <!-- /.table-responsive -->--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-body -->--%>
<%--                </div>--%>
<%--                <!-- /.panel -->--%>
<%--            </div>--%>
<%--            <!-- /.col-lg-6 -->--%>
<%--        </div>--%>
<%--        <!-- /.row -->--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="panel panel-default">--%>
<%--                    <div class="panel-heading">--%>
<%--                        Striped Rows--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-heading -->--%>
<%--                    <div class="panel-body">--%>
<%--                        <div class="table-responsive">--%>
<%--                            <table class="table table-striped">--%>
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th>#</th>--%>
<%--                                    <th>First Name</th>--%>
<%--                                    <th>Last Name</th>--%>
<%--                                    <th>Username</th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr>--%>
<%--                                    <td>1</td>--%>
<%--                                    <td>Mark</td>--%>
<%--                                    <td>Otto</td>--%>
<%--                                    <td>@mdo</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>2</td>--%>
<%--                                    <td>Jacob</td>--%>
<%--                                    <td>Thornton</td>--%>
<%--                                    <td>@fat</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>3</td>--%>
<%--                                    <td>Larry</td>--%>
<%--                                    <td>the Bird</td>--%>
<%--                                    <td>@twitter</td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                        <!-- /.table-responsive -->--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-body -->--%>
<%--                </div>--%>
<%--                <!-- /.panel -->--%>
<%--            </div>--%>
<%--            <!-- /.col-lg-6 -->--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="panel panel-default">--%>
<%--                    <div class="panel-heading">--%>
<%--                        Bordered Table--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-heading -->--%>
<%--                    <div class="panel-body">--%>
<%--                        <div class="table-responsive table-bordered">--%>
<%--                            <table class="table">--%>
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th>#</th>--%>
<%--                                    <th>First Name</th>--%>
<%--                                    <th>Last Name</th>--%>
<%--                                    <th>Username</th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr>--%>
<%--                                    <td>1</td>--%>
<%--                                    <td>Mark</td>--%>
<%--                                    <td>Otto</td>--%>
<%--                                    <td>@mdo</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>2</td>--%>
<%--                                    <td>Jacob</td>--%>
<%--                                    <td>Thornton</td>--%>
<%--                                    <td>@fat</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>3</td>--%>
<%--                                    <td>Larry</td>--%>
<%--                                    <td>the Bird</td>--%>
<%--                                    <td>@twitter</td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                        <!-- /.table-responsive -->--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-body -->--%>
<%--                </div>--%>
<%--                <!-- /.panel -->--%>
<%--            </div>--%>
<%--            <!-- /.col-lg-6 -->--%>
<%--        </div>--%>
<%--        <!-- /.row -->--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="panel panel-default">--%>
<%--                    <div class="panel-heading">--%>
<%--                        Hover Rows--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-heading -->--%>
<%--                    <div class="panel-body">--%>
<%--                        <div class="table-responsive">--%>
<%--                            <table class="table table-hover">--%>
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th>#</th>--%>
<%--                                    <th>First Name</th>--%>
<%--                                    <th>Last Name</th>--%>
<%--                                    <th>Username</th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr>--%>
<%--                                    <td>1</td>--%>
<%--                                    <td>Mark</td>--%>
<%--                                    <td>Otto</td>--%>
<%--                                    <td>@mdo</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>2</td>--%>
<%--                                    <td>Jacob</td>--%>
<%--                                    <td>Thornton</td>--%>
<%--                                    <td>@fat</td>--%>
<%--                                </tr>--%>
<%--                                <tr>--%>
<%--                                    <td>3</td>--%>
<%--                                    <td>Larry</td>--%>
<%--                                    <td>the Bird</td>--%>
<%--                                    <td>@twitter</td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                        <!-- /.table-responsive -->--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-body -->--%>
<%--                </div>--%>
<%--                <!-- /.panel -->--%>
<%--            </div>--%>
<%--            <!-- /.col-lg-6 -->--%>
<%--            <div class="col-lg-6">--%>
<%--                <div class="panel panel-default">--%>
<%--                    <div class="panel-heading">--%>
<%--                        Context Classes--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-heading -->--%>
<%--                    <div class="panel-body">--%>
<%--                        <div class="table-responsive">--%>
<%--                            <table class="table">--%>
<%--                                <thead>--%>
<%--                                <tr>--%>
<%--                                    <th>#</th>--%>
<%--                                    <th>First Name</th>--%>
<%--                                    <th>Last Name</th>--%>
<%--                                    <th>Username</th>--%>
<%--                                </tr>--%>
<%--                                </thead>--%>
<%--                                <tbody>--%>
<%--                                <tr class="success">--%>
<%--                                    <td>1</td>--%>
<%--                                    <td>Mark</td>--%>
<%--                                    <td>Otto</td>--%>
<%--                                    <td>@mdo</td>--%>
<%--                                </tr>--%>
<%--                                <tr class="info">--%>
<%--                                    <td>2</td>--%>
<%--                                    <td>Jacob</td>--%>
<%--                                    <td>Thornton</td>--%>
<%--                                    <td>@fat</td>--%>
<%--                                </tr>--%>
<%--                                <tr class="warning">--%>
<%--                                    <td>3</td>--%>
<%--                                    <td>Larry</td>--%>
<%--                                    <td>the Bird</td>--%>
<%--                                    <td>@twitter</td>--%>
<%--                                </tr>--%>
<%--                                <tr class="danger">--%>
<%--                                    <td>4</td>--%>
<%--                                    <td>John</td>--%>
<%--                                    <td>Smith</td>--%>
<%--                                    <td>@jsmith</td>--%>
<%--                                </tr>--%>
<%--                                </tbody>--%>
<%--                            </table>--%>
<%--                        </div>--%>
<%--                        <!-- /.table-responsive -->--%>
<%--                    </div>--%>
<%--                    <!-- /.panel-body -->--%>
<%--                </div>--%>
<%--                <!-- /.panel -->--%>
<%--            </div>--%>
<%--            <!-- /.col-lg-6 -->--%>
<%--        </div>--%>
        <!-- /.row -->
    </div>


</div>



<script src="<%=basePath%>vendor/jquery/jquery.min.js"></script>


<script src="vendor/bootstrap/js/bootstrap.min.js"></script>


<script src="vendor/metisMenu/metisMenu.min.js"></script>


<script src="vendor/datatables/js/jquery.dataTables.min.js"></script>
<script src="vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
<script src="vendor/datatables-responsive/dataTables.responsive.js"></script>


<script src="dist/js/sb-admin-2.js"></script>


<script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
            responsive: true
        });
    });
</script>

</body>

</html>
