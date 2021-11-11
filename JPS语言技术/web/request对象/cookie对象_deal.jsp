<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>处理页面</title>
</head>
<body>
<%
    //定义字符集编码
    request.setCharacterEncoding("GB18030");
    //获取请求user参数,并在实例cookie时进行编码
    String user = URLEncoder.encode(request.getParameter("user"), "UTF-8");
    Date d = new Date();
    SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String s = sdf.format(d);
    String date = URLEncoder.encode(s, "UTF-8");
    //实例化cookie对象
    Cookie cookie = new Cookie("mrCookie", user + "#" +date);
    //设置cookie的保存时间为24小时
    cookie.setMaxAge(60*60*24);
    //添加cookie
    response.addCookie(cookie);
%>
</body>
</html>
