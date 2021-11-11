<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 12:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>条件选择标签choose</title>
</head>
<body>
<h2>条件选择标签choose标签作为when和otherwise标签的父标签</h2>
choose选择标签只能作为when和otherwise标签的父标签，<br>
要现实真正的选择逻辑，可以在choose标签体中嵌套when和otherwise标签来完成
<br>
<h2>利用选择标签完成根据是否登录来显示不同的页面</h2>
<c:choose>
    <c:when test="${empty param.user}">
        <form name="form1" action="" method="post">
            <input type="text" name="user">
            <br>
            <input type="submit" value="提交">
        </form>
    </c:when>
    <c:otherwise>
        <c:out value="欢迎[${param.user}]用户登录该网站！"></c:out>
    </c:otherwise>
</c:choose>
</body>
</html>
