<%@ page import="java.awt.*" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/11/15
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="two.jsp" method="post">
    <%
        String a = request.getParameter("a");

        if (a != null) {
    %>
    <input type="text" name="a" value="<%=a%>">
    <%
    } else {
    %>
    <input type="text" name="a">
    <%
        }
    %>
    <select name="select">
        <option>+</option>
        <option>-</option>
        <option>*</option>
        <option>/</option>
    </select>
    <%
        String b = request.getParameter("b");

        if (b!= null) {
    %>
    <input type="text" name="b" value="<%=b%>">
    <%
    } else {
    %>
    <input type="text" name="b">
    <%
        }
    %>
    =

    <%
        String c = request.getParameter("c");

        if (c!= null) {
    %>
    <input type="text" name="c" value="<%=c%>" disabled>
    <%
    } else {
    %>
    <input type="text" name="c" disabled>
    <%
        }
    %>

    <input type="submit" value="提交">

</form>
</body>
</html>
