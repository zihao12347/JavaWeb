<%@ page import="java.util.Random" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>其他标签otherwise</title>
</head>
<body>
<h2>其他标签otherwise</h2>
otherwise标签也是choose标签的子标签，用于当choose标签中的默认条件处理逻辑
当如果没有一个结果满足when标签指定的条件时，将执行otherwise其他标签的逻辑代码
<br>
<h2>幸运大抽奖案例</h2>
<%--创建Random对象，获取幸运的随机数--%>
<%
    Random random = new Random();
%>
<c:set var="luck">
    <%=random.nextInt(10)%>
</c:set>
<c:choose>
    <c:when test="${luck==6}">
        恭喜你，获得一等奖！
    </c:when>
    <c:when test="${luck==7}">
        恭喜你，获得一等奖！
    </c:when>
    <c:when test="${luck==8}">
        恭喜你，获得一等奖！
    </c:when>
   <c:otherwise>
       谢谢参与！
   </c:otherwise>
</c:choose>
您的幸运号码为：${luck}
</body>
</html>
