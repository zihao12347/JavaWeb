<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/7
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>c:set变量设置变标签</title>
</head>
<body>
<h2>变量设置标签</h2>
<p>变量设置标签用于在指定范围内保存某一个值的变量</p>
1.在scope指定范围内保存一个变量
<c:set value="zihao" var="set1" scope="request"></c:set><br>
<c:out value="set1的值为：${requestScope.set1}"></c:out>

</body>
</html>
