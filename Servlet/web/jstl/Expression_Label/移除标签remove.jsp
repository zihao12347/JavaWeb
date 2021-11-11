
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/7
  Time: 23:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>移除标签</title>
</head>
<body>
<h2>remove标签用于移除指定的jsp范围内的变量</h2>
定义request范围内的变量user<br>
<c:set scope="request" var="username" value="明日科技"></c:set>
<c:out value="request范围内的username变量为：${requestScope.username}"></c:out><br>
移除request范围内的username变量<br>
<c:remove scope="request" var="username"></c:remove>
<c:out value="request范围内的username变量为：${requestScope.username}" default="空"></c:out>
</body>
</html>
