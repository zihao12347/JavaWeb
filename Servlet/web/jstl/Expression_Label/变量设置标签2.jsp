<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/7
  Time: 23:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>变量设置标签</title>
</head>
<body>
<h2>将变量值储存到targat目标指定的property属性中</h2>
<jsp:useBean id="bean" class="cn.itcast.jstl.UserInfo"></jsp:useBean>
<c:set target="${bean}" property="name">梓浩</c:set>
<c:out value="bean中name属性值为：${bean.name}"></c:out>
</body>
</html>
