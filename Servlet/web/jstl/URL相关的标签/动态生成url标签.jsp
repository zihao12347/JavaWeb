<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 12:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c:url动态生成url标签</title>
</head>
<body>
<h2>利用c:url标签生成一个url路径的字符串</h2>
该字符串路径可以赋值给html中的a标签实现url的链接，或者用该url字符串路径实现页面转发或者重定向
<c:url value="/index.jsp" var="path" scope="page">
    <c:param name="user" value="mrkj"></c:param>
    <c:param name="pdw" value="123456"></c:param>
</c:url>
<a href="${pageScope.path}">链接提交注册</a>
</body>
</html>
