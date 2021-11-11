<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 22:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>sendRedirect重定向到登入页面</title>
</head>
<body>
<%
    response.sendRedirect("login.jsp");
%>
</body>
</html>
