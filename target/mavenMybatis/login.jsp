<%--
  Created by IntelliJ IDEA.
  User: Luke
  Date: 2020/3/31
  Time: 9:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>Title</title>
    <base href="<%=basePath%>">
</head>
<body style="text-align: center">
<h2>用户登录</h2>
<hr>
<form action="pay/login" method="post">
    用户名: <input type="text" name="userName"/><br/>
    密码: <input type="password" name="userPwd"><br/>
    <input type="submit" value="提交" />&nbsp;&nbsp;&nbsp;



</form>
</body>
</html>
