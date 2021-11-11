<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/6
  Time: 0:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通过EL获取并显示信息</title>
</head>
<style type="text/css">
    #d1{
        margin-left: 448px;
        margin-top: 15px;
    }
</style>
<body>
<div id="DIV">
<div id="d1">
    <%
        request.setCharacterEncoding("GB18030");

    %>
    <h2>用户注册信息</h2>
    用户名信息：${empty param.user?"用户名信息为空":param.user}<br>
    用户密码信息：${empty param.pwd1?"用户密码信息为空":param.pwd1}<br>
    用户E-mail信息：${empty param.email?"用户E-mail信息为空":param.email}<br>
    用户性别信息：${empty param.sex?"用户性别信息为空":param.sex}<br>
    用户爱好信息:${paramValues.affect[0]},${paramValues.affect[1]},${paramValues.affect[2]},${paramValues.affect[3]}<br>
    用户备注信息：${empty param.memo?"用户备注信息信息为空":param.memo}<br>
    <a href="Test2_register.jsp">返回</a>
</div>
</div>

</body>
</html>
