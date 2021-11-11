<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/5
  Time: 23:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>作用域隐含对象</title>
</head>
<body>
EL中提供了4个访问作用域隐含对象
pageScope,requstScope,sessionScope,applicationScope
<h2>requestScope对象返回request范围内的属性值</h2>
<%
    request.setAttribute("username","zihao");
%>
    ${requestScope.username}
<h2>sessionScope对象返回session范围内的属性值</h2>
<%
    session.setAttribute("manage","mr");
%>
${sessionScope.manage}
<h2>applicationScope对象返回应用程序上下文属性值</h2>
<%
    session.setAttribute("message","欢迎光临YY聊天直播室");
%>
    ${sessionScope.message}
<h2></h2>
</body>
</html>
