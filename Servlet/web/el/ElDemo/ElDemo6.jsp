<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/5
  Time: 23:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--使用useBean时指定page范围--%>
<jsp:useBean id="bean1" scope="page" type="cn.itcast.el.User" class="cn.itcast.el.User"></jsp:useBean>
<jsp:setProperty name="bean1" property="username" value="梓浩"></jsp:setProperty>
<html>
<head>
    <title>通过pageScope隐含对象读取page范围内的JavaBean属性值</title>
</head>
<body>
<h2>通过pageScope隐含对象读取page范围内的JavaBean属性值</h2>
${pageScope.bean1.username}
</body>
</html>
