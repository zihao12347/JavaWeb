<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/7
  Time: 19:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>c:out输出表达式</title>
</head>
<body>
<h2>c:out输出表达式</h2>
c:out输出表达式用于将表达式的值输出到jsp页面中。
value：指定要输出的表达式的值
escapeXml：指定是否转化成特殊字符
defualt:指定当前的value值等于null时，要显示的默认值，当没有指定时，输出为空在字符串
<h2>运用c:out标签输出《水平线标签hr》</h2>
1.当escapeXml标签为true时,转换成特殊字符
<c:out value="水平线标签<hr>" escapeXml="true"></c:out><br>
<c:out value="<" escapeXml="true"></c:out><br>
<c:out value=">" escapeXml="true"></c:out><br>
2.当escapeXml标签为false时
<c:out value="水平标签<hr>" escapeXml="false"></c:out><br>
</body>
</html>
