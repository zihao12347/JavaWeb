<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页面重定向redirect标签</title>
</head>
<body>
<h2>利用c:redirect标签重定向页面并传递参数</h2>

<c:redirect url="main.jsp">
    <c:param name="user" value="wgh">
    </c:param>
</c:redirect>
</body>
</html>
