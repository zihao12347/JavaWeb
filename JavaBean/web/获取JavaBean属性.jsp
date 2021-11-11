<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="bean1" class="cn.itcast.domain.Produce"></jsp:useBean>
<html>
<head>
    <title>在jsp页面中获取JavaBean属性</title>
</head>
<body>
<div>
    <ul>
        <li>
            商品名称:<jsp:getProperty name="bean1" property="name"></jsp:getProperty>
        </li>
        <li>
            商品价格:<jsp:getProperty name="bean1" property="price"></jsp:getProperty>
        </li>
        <li>
            商品数量:<jsp:getProperty name="bean1" property="number"></jsp:getProperty>
        </li>
        <li>
            商品厂址:${bean1.address}
        </li>
    </ul>
</div>
</body>
</html>
