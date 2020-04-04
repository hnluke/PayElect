<%--
  Created by IntelliJ IDEA.
  User: Luke
  Date: 2020/3/31
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title></title>
    <base href="<%=basePath%>">
    <style type="text/css">
        .myClass{
            width: 90%;
        }

        td {
            text-align: center;
        }
    </style>
    <script src="${pageContext.request.contextPath}/js/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath}/My97DatePicker/WdatePicker.js"></script>
    <script type="text/javascript">
        $(function () {
            $("input[name=querySelect]").click(function () {
                if($(this).val() == '1') {
                    $("#query").attr("disabled", false);
                    $("#s_query").attr("disabled", true);

                }else{
                    $("#query").attr("disabled", true);
                    $("#s_query").attr("disabled", false);
                    $("#forPage").attr("disabled", true);
                    $("#nextPage").attr("disabled", true);
                }


            });
        })
    </script>


</head>
<body style="text-align: center">
<h2>电费管理系统</h2>
<span>电费查询</span><br/>
<hr>
<div style="text-align: left"><input name="querySelect" type="radio" value="1" checked/>定制查询</div>
<form id = "formQuery"  action="pay/payElecHandle" method="post" >

    <table border="1" cellspacing="" cellpadding="" width="70%" align="center">
        <tr>
            <td>户号</td>
            <td><input type="text" name="userNo" style="width: 90%;" class="myClass"></td>
            <td>户主姓名</td>
            <td><input type="text" name="userName"/></td>
            <%--            <td><input type="text" class="myClass" name="enpCreateTime" onclick="WdatePicker()"/></td>--%>
        </tr>
        <tr>
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
        </tr>
        <tr>
            <td>缴纳日期</td>
            <td><input type="text" class="myClass" name="payDate" onclick="WdatePicker()" autocomplete="off"/></td>
            <td></td>
            <td>
            </td>
        </tr>

    </table>
    <br>

    <div style="text-align: center;">
        <input type="submit" id="query" value="查询" />

        <br/>
    </div>
</form>
<div style="text-align: left"><input type="radio" name="querySelect" value="2" /> 汇总查询</div>
<br/>
<div style="text-align: left">
    <table border="1" cellspacing="0" cellpadding="0">

    <form action="pay/summaryHandle" method="post">
        <tr><th style="text-align:center" width="400px">
        <input type="checkbox" name="summay" value="payDate"/>缴纳年月
        <input type="checkbox" name="summay" value="payAreaId"/>所属片区
        <input type="checkbox" name="summay" value="payChannelId"/>资金渠道
        </th>
        <th>
        <input type="submit" value="查询" id="s_query"  style="width: 80px" disabled/>
        </th>
        </tr>

    </form>

    </table>
</div>
<hr>
<c:if test="${!empty(query_summary)}">
    <script type="text/javascript">
        $("#forPage").attr("disabled", false);
        $("#query").attr("disabled", false);
    </script>
    <table border="1" width="80%" style="text-align: center" align="center">

        <tr>
            <th>资金渠道</th>
            <th>户数</th>
            <th>总金额</th>

        </tr>
        <c:forEach var="quy" items="${query_summary}" >

            <tr>
                <td>${quy.channels}</td>
                <td>${quy.total}</td>
                <td>${quy.totalAccount}</td>

            </tr>
        </c:forEach>

    </table>

</c:if>
<c:if test="${!empty(query_list)}">
    <script type="text/javascript">
        $("#forPage").attr("disabled", false);
        $("#query").attr("disabled", false);
    </script>
    <div>
    查询结果如下：(户号:[${condition_list.get(0)}]&nbsp;&nbsp;户主姓名:[${condition_list.get(1)}]&nbsp;&nbsp;
    缴纳年月:[${condition_list.get(2)}]&nbsp;&nbsp;资金渠道:[${condition_list.get(3)}]&nbsp;&nbsp;所属片区:[${condition_list.get(4)}])
    </div>
    <hr>
    <table border="1" width="80%" style="text-align: center" align="center">

            <tr>
                <th>序号</th>
                <th>户号</th>
                <th>户主姓名</th>
                <th>缴纳金额</th>
                <th>缴纳年月</th>
                <th>资金渠道</th>
                <th>所属片区</th>

            </tr>
            <c:forEach var="quy" items="${query_list}" >
                <c:set var="payDate" value="${quy.payDate}" />
                <tr>
                    <td>${quy.payId}</td>
                    <td>${quy.users.userNo}</td>
                    <td>${quy.users.userName}</td>
                    <td>${quy.payAccount}</td>
                    <td>
                        <fmt:formatDate type="date" value="${payDate}" />

                    </td>
                    <td>${quy.channel.chnName}</td>
                    <td>${quy.area.areaName}</td>
                </tr>
            </c:forEach>

    </table>

</c:if>
<input type="button" value="上一页" id="forPage" onclick="forward()"/>
<input type="button" value="下一页" id="nextPage" onclick="next()"/>


</body>
<script type="text/javascript">
    function next() {
        var current = 1;
        if(${!empty(current)}) {
            current = ${current};
        }
        current = current + 1;
        $("#formQuery").attr("action", "pay/payElecHandle?pages=" + current);
        $("#formQuery").attr("method", "post");
        $("#formQuery").submit();
    }

    function forward() {
        var current = 1;
        if(${!empty(current)}) {
            current = ${current};
        }
        if(current > 1) {
            current = current - 1;
        } else {
            current = 1;
        }

        $("#formQuery").attr("action", "pay/payElecHandle?pages=" + current);
        $("#formQuery").attr("method", "post");
        $("#formQuery").submit();

    }

</script>

</html>

