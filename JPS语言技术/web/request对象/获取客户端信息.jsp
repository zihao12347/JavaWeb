<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 22:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>使用request对象获取客户的信息</title>
</head>
<body>
客户的提交方式<%=request.getMethod()%><br>
使用的协议<%=request.getProtocol()%><br>
获取发出请求的url<%=request.getRequestURL()%><br>
获取发出请求uri<%=request.getRequestURI()%><br>
获取提交数据的客户端ip地址<%=request.getRemoteAddr()%><br>
获取服务器端口名称<%=request.getServerPort()%><br>
获取服务器的主机名<%=request.getServerName()%><br>
获取请求uri中的servlet路径字符串<%=request.getServletPath()%><br>
获取请求文件的绝对路径<%=request.getRealPath("获取客户端信息.jsp")%><br>
获取http请求头中的host信息<%=request.getHeader("host")%><br>
获取http请求头中的user-agent信息<%=request.getHeader("user-agent")%><br>
获取http请求头中的accept-language信息<%=request.getHeader("accept-language")%><br>

</body>
</html>
