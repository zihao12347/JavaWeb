<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="cn.itcast.domain.User" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/8/21
  Time: 23:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSTL.test</title>
</head>
<body>
<%
    List<User> list = new ArrayList<>();
    list.add(new User("aaa",18,"2002-01-05"));
    list.add(new User("bbb",19,"2001-05-14"));
    list.add(new User("ccc",20,"2000-11-25"));
    request.setAttribute("list",list);
%>
<table valign="middle" align="center">
    <tr>
        <td>编号</td>
        <td>姓名</td>
        <td>年龄</td>
        <td>性别</td>
    </tr>
    <c:forEach items="${list}" var="user" varStatus="id">
        <c:if test="${id.count % 2==0}">
            <tr valign="middle" align="center" bgcolor="aqua">
                <td >
                        ${id.count}



                </td>
                <td>
                        ${user.name}
                </td>
                <td>${user.age}</td>
                <td>${user.brithday}</td>
            </tr>
        </c:if>
        <c:if test="${id.count % 2!=0}">
            <tr valign="middle" align="center" bgcolor="#7fffd4" bgcolor="aqua">
                <td >
                        ${id.count}



                </td>
                <td>
                        ${user.name}
            </td>
                <td>${user.age}</td>
                <td> ${user.brithday}</td>
            </tr>
        </c:if>

    </c:forEach>
</table>

</body>
</html>
