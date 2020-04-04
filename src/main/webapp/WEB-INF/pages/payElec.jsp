<%--
  Created by IntelliJ IDEA.
  User: Luke
  Date: 2020/3/31
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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


</head>
<body style="text-align: center">
<h2>电费管理系统</h2>
<br/>
<span>用户缴费</span><br/>
<hr>
<br>
<form action="pay/payElec" method="post" >

    <table border="1" cellspacing="" cellpadding="" width="70%" align="center">
        <tr>
            <td>户号</td>
            <td><input type="text" name="userNo" style="width: 90%;" class="myClass" oninput="clears();"></td>
            <td>户主姓名</td>
            <td><input type="text" name="userName"/></td>
<%--            <td><input type="text" class="myClass" name="enpCreateTime" onclick="WdatePicker()"/></td>--%>
        </tr>
        <tr>
            <td>资金渠道</td>
            <td>
                <select name="payChannelId">
                    <option value="1">营业厅</option>
                    <option value="2">银行代缴</option>
                    <option value="3">支付宝</option>
                    <option value="4">微信</option>
                </select>
            </td>
            <td>缴纳金额</td>
            <td><input type="text" class="myClass" id="date1" name="payAccount" /></td>
        </tr>
        <tr>
            <td>所属片区</td>
            <td>
                <select name="payAreaId">
                    <option value="1">一栋</option>
                    <option value="2">二栋</option>
                    <option value="3">三栋</option>
                    <option value="4">四栋</option>
                    <option value="5">五栋</option>
                </select>
            </td>
            <td>缴纳日期</td>
            <td><input type="text" class="myClass" name="payDate" onclick="WdatePicker()" autocomplete="off"/></td>
        </tr>

    </table>
    <br>
    <span id="notice" style="font-weight: bold">${notice}</span>
    <hr>
    <div style="text-align: center;">
        <input type="submit" value="注册" />
        <input type="reset" value="取消" /> <a href="pay/query">查询</a>

        <br/>
    </div>

</form>

</body>
<script type="text/javascript">
    function clears() {
        $("#notice").text("");
    }
</script>
</html>

