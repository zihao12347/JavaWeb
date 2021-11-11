<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>列举1-10之间的全部奇数</title>
</head>
<body>
<h2>列举1-10之间的全部奇数</h2>
<c:forEach var="i" begin="1" step="2" end="10">
    ${i}&nbsp&nbsp&nbsp&nbsp
</c:forEach>
</body>
</html>
