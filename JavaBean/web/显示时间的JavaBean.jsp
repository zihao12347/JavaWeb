<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 18:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="bean" class="cn.itcast.domain.DateBean" scope="application"></jsp:useBean>
<html>

<head>
    <title>显示时间的JavaBean</title>
    <style type="text/css">
        #clock{
            width:420px;
            height:80px;
            background:#E0E0E0;
            font-size: 25px;
            font-weight: bold;
            border: solid 5px orange;
            padding: 20px;
        }
        #week{
            padding-top:15px;
            color: #0080FF;
        }
    </style>
    <%--设置页面每隔一秒刷新一次--%>
    <meta http-equiv="refresh" content="1">
</head>
<body>
<%--<%
    //通过响应头设置页面每个多少秒刷新一次页面
    response.setHeader("refresh","1");
%>--%>

<div align="center">
    <div id="clock">
       <jsp:getProperty name="bean" property="datetime"></jsp:getProperty>
        <div id="week">
            <jsp:getProperty name="bean" property="week"></jsp:getProperty>
        </div>
    </div>
</div>
</body>
</html>
