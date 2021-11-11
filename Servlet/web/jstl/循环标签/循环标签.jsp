<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>forEach循环标签</title>
</head>
<body>
<h2>forEach循环标签</h2>
forEach循环标签可以根据循环条件，遍历数组和集合类中所有或者部分的元素
<h2>遍历List集合</h2>
<% ArrayList<String> list = new ArrayList<>();
    list.add("简单是可靠的决绝条件");
    list.add("兴趣是最好的老师");
    list.add("知识上的投资总能得到最好的回报！");
    request.setAttribute("list",list);
%>
<h2>遍历集合中的所有元素</h2>
<c:forEach items="${requestScope.list}" var="list1" varStatus="id">
    ${id.index}:${list1}<br>
</c:forEach>
<h2>遍历集合中的部分元素从下标为1开始遍历</h2>
<c:forEach varStatus="id" items="${requestScope.list}" begin="1" var="lsit2">
    ${id.index}:${lsit2}<br>
</c:forEach>
</body>
</html>
