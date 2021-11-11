<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在作用域中管理属性</title>
</head>
<body>
<%
    String  result =(String) request.getAttribute("result");
%>
<%=result%>
</body>
</html>
