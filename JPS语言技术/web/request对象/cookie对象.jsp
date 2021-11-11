<%@ page import="java.net.URLDecoder" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 21:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通过cookie读取用户登入信息</title>
</head>
<body>
<%
    Cookie[] cookies = request.getCookies();    //获取cookies集合
    String user="";     //获取用户
    String date="";     //获取注册时间
    if (cookies!=null) {    //当cookies集合不为null时
        for (int i = 0; i <cookies.length ; i++) {      //循环遍历cookies集合
            if ("mrCookie".equals(cookies[i].getName())) {      //判断cookies集合中是否有名为mrCookie的cookie对象
                user  = URLDecoder.decode(cookies[i].getValue().split("#")[0]);     //获取用户名
                date = cookies[i].getValue().split("#")[1];     //获取注册时间
            }
        }
    }
    if ("".equals(user)&&"".equals(date)) {     //当cookies集合用户名和注册时间都为空时代表没有注册过，进入注册页面
%>
    欢迎初次登入！
<form name="form1" action="cookie对象_deal.jsp" method="post">
    <%--初次登入时，将数值提交到处理页面，进行实例化cookie--%>
    <input type="text" name="user" value="">
    <input type="submit" value="确定">
</form>
<%
    }
    else {
        //否则已经注册过
        %>
        欢迎[<%=user%>]再次登入，您注册的时间为：[<%=date%>];
<%
    }
%>
</body>
</html>
