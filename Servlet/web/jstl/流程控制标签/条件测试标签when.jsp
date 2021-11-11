<%@ page import="java.util.Date" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 12:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>条件测试标签when</title>
</head>
<body>
<h2>条件测试标签when</h2>
条件测试标签when是choose标签的子标签，他可以根据不同的条件执行不同的业务逻辑
可以用多个when标签来处理不同条件的业务逻辑层
<h2>利用条件选择标签实现分时问候</h2>
<%--先获取时间保存到变量中--%>
<c:set var="hour" >
    <%=new Date().getHours()
    %>
</c:set>
<c:set var="seconds">
    <%=new Date().getSeconds()
    %>
</c:set>
<c:choose>
    <c:when test="${hour>=1&&hour<=6}">早上好</c:when>
    <c:when test="${hour>6&&hour<=11}">上午好</c:when>
    <c:when test="${hour>11&&hour<=17}">下午好</c:when>
    <c:when test="${hour>17&&hour<=24}">晚上好</c:when>
</c:choose>
<c:out value="现在时间是${hour}:${seconds}"></c:out>
</body>
</html>
