<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 12:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>条件判断标签</title>
</head>
<body>
<h2>c:if条件判断标签</h2>
<%
    request.setCharacterEncoding("utf-8");

%>
根据是否登入显示不同的结果
<c:if var="result" test="${empty param.username}">
    <form name="form1" action="" method="post">
        <input type="text " name="username">
        <br>
        <input type="submit" value="登入">
    </form>
</c:if>
<c:if test="${!result}">
    <c:out value="${param.username}欢迎访问该公司！"></c:out>
</c:if>
</body>
</html>
