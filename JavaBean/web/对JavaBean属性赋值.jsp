<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--导入标签库指令--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--在jsp页面中创建bean实例--%>
<jsp:useBean id="bean2" class="cn.itcast.domain.Produce2"></jsp:useBean>
<%--给bean中的属性赋值--%>
<jsp:setProperty name="bean2" property="name" value="洗衣机"></jsp:setProperty>
<jsp:setProperty name="bean2" property="price" value="8888.88"></jsp:setProperty>
<jsp:setProperty name="bean2" property="number" value="88"></jsp:setProperty>
<c:set target="${bean2}" property="address" >广东省Xxx公司</c:set>
<html>
<head>
    <title>在jsp页面中对JavaBean属性赋值并将内容输出到页面中</title>
</head>
<body>
<ul>
    <<li>
    商品名称:<jsp:getProperty name="bean2" property="name"></jsp:getProperty>
</li>
    <li>
        商品价格:<jsp:getProperty name="bean2" property="price"></jsp:getProperty>
    </li>
    <li>
        商品数量:<jsp:getProperty name="bean2" property="number"></jsp:getProperty>
    </li>
    <li>
        商品厂址:${bean2.address}
    </li>
</ul>
</body>
</html>
