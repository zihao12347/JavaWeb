<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 17:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="bean3" class="cn.itcast.domain.User"></jsp:useBean>
<jsp:setProperty name="bean3" property="*"></jsp:setProperty>
<html>
<head>
    <title></title>
</head>
<body>

<table border="0" align="center" valign="middle">
    <tr  bgcolor="#00ffff"align="center" valign="middle">
        <td colspan="2">
            <b>用户录入信息</b>
        </td>
    </tr>
    <tr align="center" valign="middle">
        <td>
            姓&nbsp&nbsp名:
        </td>
        <td>
                <jsp:getProperty name="bean3" property="name"></jsp:getProperty>
        </td>
    <tr align="center" valign="middle">
        <td>
            年&nbsp&nbsp龄:
        </td>
        <td>
            <jsp:getProperty name="bean3" property="age"></jsp:getProperty>
        </td>
    <tr align="center" valign="middle">
        <td>
            性&nbsp&nbsp别:
        </td>
        <td>
            <c:out value="${bean3.sex}"></c:out>
        </td>
    <tr align="center" valign="middle">
        <td>
            住&nbsp&nbsp址:
        </td>
        <td>
            <c:out value="${bean3.address}"></c:out>
        </td>

</table>
</body>
</html>
