<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/5
  Time: 23:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>pageContext页面上下文隐含对象的值</title>
</head>
<body>
<h2>获取request对象中客户端的相关信息</h2>
获取到request对象后可以获取Http报头信息，用户提交方式，客户端信息，服务器信息
<hr>
获取服务器信息
${pageContext.request.serverPort}
获取客户端信息
${pageContext.request.remoteAddr}
<h2>通过获取response对象后可获取与响应相关的信息</h2>
获取响应格式
${pageContext.response.contentType}
获取响应的编码格式
${pageContext.response.characterEncoding}
<h2>访问page对象</h2>
获取servletContext对象中的servlet上下文路径、
${pageContext.servletContext.contextPath}
</body>
</html>
