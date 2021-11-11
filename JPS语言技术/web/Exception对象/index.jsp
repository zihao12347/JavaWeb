<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 23:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" errorPage="error.jsp" %>
<html>
<head>
    <title>使用exception对象获取异常信息</title>
</head>
<body>
exception对象用来处理jsp文件执行时发生异常和错误。
只有在page指令标签中设置isErrorPage的属性值为：true,才可以使用。
<br>
常用方法：getMessage()返回exception对象的异常信息字符串，
<%
    request.setAttribute("price","12.5元");
    float price=Float.parseFloat(request.getAttribute("price").toString());
%>

</body>
</html>
