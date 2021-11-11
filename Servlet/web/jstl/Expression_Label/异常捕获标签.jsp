<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/7
  Time: 23:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>异常捕获标签</title>
</head>
<body>
<h2>捕获向UserInfo中的不存在pwd属性中储存一个变量值的异常</h2>
<c:catch var="catch1">
<jsp:useBean id="bean" class="cn.itcast.jstl.UserInfo"></jsp:useBean>
<c:set target="${bean}" property="pdw">111</c:set>
<c:out value="${bean.pwd}"></c:out>
</c:catch>
<c:out value="${catch1}"></c:out>
</body>
</html>
