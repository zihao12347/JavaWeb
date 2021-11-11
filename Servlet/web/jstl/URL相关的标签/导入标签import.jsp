<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/7
  Time: 23:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导入标签import</title>
</head>
<body>
<h2>导入标签用于导入站内或者其他网站的静态和动态文件到WEB页面中</h2>
运用导入标签导入Banner并传递参数
<c:set var="typeName" value="流行歌曲| 经典老歌 | 热舞DJ | 欧美金曲 | 少儿歌曲 | 轻音乐 | 最新上榜"></c:set>
<c:import url="navigation.jsp" var="import1" charEncoding="UTF-8">
    <c:param name="typeList" value="${typeName}"></c:param>
</c:import>
</body>
</html>
