<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 21:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>request对象范围请求参数</title>
</head>
<body>
获取请求参数
<%
    String id = request.getParameter("id");
    String user = request.getParameter("user");
    String pwd = request.getParameter("pwd");
%>
id的参数值为：<%=id%><br>
user的参数值为：<%=user%><br>
pwd的参数值为：<%=pwd%>

</body>
</html>
