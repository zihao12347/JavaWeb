<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");
    //获取表单提交的address参数
    String address = request.getParameter("address");
    //获取session范围内的name参数
    Object name = session.getAttribute("name");
%>
<table width="28%" align="center">
    <tr>
        <td colspan="2">
            <b>显示结果</b>
        </td>
    </tr>
    <tr>
        <td width="49%" align="center">
            您的名字是：
        </td>
        <td width="51%">
            <%=name%>
        </td>
    </tr>
    <tr>
        <td>
            您的地址是：
        </td>
        <td>
            <%=address%>
        </td>
    </tr>
</table>
</body>
</html>
