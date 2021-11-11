<%@ page import="java.util.Locale" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>显示国际化信息</title>
</head>
<body>
浏览器可以通过accept-language的HTTP表头向服务器指明它所使用的本地语言，在request的getLocale()方法可以获取这一些信息。
<%
    Locale locale = request.getLocale();
    String str="";
    if (locale.equals(Locale.US)) {
        str="Hello,Welcom to access our company's Web!";
    }
    if (locale.equals(Locale.CHINA)) {
        str="您好，欢迎访问我们公司！";
    }
%>
<%=str%>
</body>
</html>
