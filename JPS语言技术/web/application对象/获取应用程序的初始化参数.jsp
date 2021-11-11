<%@ page import="java.util.Enumeration" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通过application对象获取应用程序的所有初始化参数</title>
</head>
<body>
<h2>application对象</h2><br>
application对象用于保存所有的应用程序中的公有数据，在服务器启动时自动创建，服务器销毁时自动销毁
<%
    //获取全部的初始化参数名称
    Enumeration<String> enema = application.getInitParameterNames();
    while (enema.hasMoreElements()) {
        String name = enema.nextElement();//获取初始化参数名
        String value = application.getInitParameter(name);
        //提供获得的初始化参数名称获取值
        out.print(name+":");
        out.print(value);
    }
%>
</body>
</html>
