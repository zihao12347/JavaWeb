<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 23:07
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
    //获取提交的name参数
    String name = request.getParameter("name");
    //将name保存到session对象中
    session.setAttribute("name",name);
%>
<form name="form1" action="result.jsp" method="post">
    <table width="28%">
        <tr >
            <td>您的名字是：</td>
            <td><%=name%></td>
        </tr>
        <tr>
            <td>
                您最喜欢去的地方：
            </td>
            <td>
                <div align="center">
                    <label>
                        <input type="text" name="address">
                    </label>
                </div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div align="center">
                    <label>
                        <input type="submit" value="提交">
                    </label>
                </div>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
