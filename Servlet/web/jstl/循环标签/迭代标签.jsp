<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 16:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>迭代标签forTokens</title>
</head>
<body>
<h2>迭代标签forTokens</h2>
forTokens迭代标签，可以用于指定的分隔符将一个字符串分割开。
<h2>forTokens标签分割字符串</h2>
<c:set var="str" value="JavaWeb：程序应用开发、典型模块大全;Java从入门到精通、典型模块大全;"></c:set>
<c:forTokens items="${str}" delims="： 、 ;" var="item">
    ${item}<br>
</c:forTokens>
</body>
</html>
