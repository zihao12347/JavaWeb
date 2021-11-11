<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/5
  Time: 23:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>范围环境信息的隐含对象</title>
</head>
<body>
<h2>param对象</h2>
param对象用于获取请求参数的值：表单提交的参数，请求时传递的参数
<form name="form1" action="ElDemo7.jsp" method="get">
    名称：<input type="text" name="name">
    <input type="submit" value="提交">
</form>
${param.name}
<h2>Cookie对象用于获取Cookie中的值</h2>
<%
    Cookie cookie = new Cookie("use", "明日科技");
    response.addCookie(cookie);
%>
    ${cookie.use.value}
</body>
</html>
