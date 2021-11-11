<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/4
  Time: 9:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式</title>
</head>
<body>
<%--
el表达式语法格式：${表达式}
服务器默认支持el表达式，
--%>
<h2>默认支持EL表达式</h2>
${3>4};
<h2>禁用当前EL表达式：\${表达式}</h2>
\${3>4}
</body>
</html>
