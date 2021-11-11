<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>在作用域中管理属性</title>
</head>
<body>
<%
    try {
        int money=100;
        int number=0;
        request.setAttribute("result",money/number);
    }catch (Exception e){
        request.setAttribute("result","很抱歉，页面产生错误！");
    }
%>
<jsp:forward page="在作用域中管理属性2.jsp"></jsp:forward>
</body>
</html>
