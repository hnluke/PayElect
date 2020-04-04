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
<body>
<h2 style="text-align: center;">参建单位注册</h2>
参建单位信息注册<br/>
<hr>

<form action="${pageContext.request.contextPath}/enter/reghandle" method="post">
    本/外省参建单位：
    <select id="e_province" name="enpProvince">
        <option value="本省">本省</option>
        <option value="外省">外省</option>
    </select>
    <br/>
    <br/>
    <table border="1" cellspacing="" cellpadding="" width="70%" >
        <tr>
            <td>企业名称</td>
            <td><input type="text" name="userName" style="width: 90%;" class="myClass"></td>
            <td>成立时间</td>
            <td><input type="text" class="myClass" name="enpCreateTime" onclick="WdatePicker()"/></td>
        </tr>
        <tr>
            <td>登录密码</td>
            <td><input type="password" name="userPwd" class="myClass"></td>
            <td>密码确认</td>
            <td><input type="password" class="myClass" id="date1" name="u_pwd2"  class="myClass"/></td>
        </tr>
        <tr>
            <td>法人代表</td>
            <td><input type="text" name="eLegal" class="myClass"/></td>
            <td>法人联系电话</td>
            <td><input type="text" name="enpLegalTele" class="myClass"/></td>
        </tr>
        <tr>
            <td>公司邮编</td>
            <td><input type="text" name="enpPCode" class="myClass"/></td>
            <td>公司邮箱</td>
            <td><input type="text" name="enpEmail" class="myClass"/></td>
        </tr>

    </table>
    <br/>
    附件:
    <select name="attached">
        <option value="">营业执照</option>
        <option value="">资质证明</option>
        <option value="">其它</option>
    </select>

    <input type="file" name="" />
    <div style="text-align: center;">
        <input type="submit" value="注册" />
        <input type="reset" value="取消" /> <a href="enter/return">返回</a><span>${notice}</span>

        <br/>
    </div>

</form>

</body>
</html>

