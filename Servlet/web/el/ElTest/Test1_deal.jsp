<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/6
  Time: 0:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登入处理页面</title>
</head>
<body>
<%--利用空运算符判断输入的用户名或者密码（param对象获取表单提交的参数）是否为空，
再运用三元运算符判断结果为ture时输入用户名或者密码为空，false时输出提交的用户名或者密码--%>
${empty param.username?"用户名为空":param.username}
${empty param.pwd? "用户密码为空":param.pwd}
</body>
</html>
