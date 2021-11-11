<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/6
  Time: 0:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登入页面</title>
</head>
<body>
<form method="get" name="form1" action="Test1_deal.jsp">
    <table border="0" align="center" width="320" height="209">
        <tr align="center" valign="middle">
            <td>
                用户名：
            </td>
            <td>
                <input name="username" type="text">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
               密码：
            </td>
            <td>
                <input name="pwd" type="password">
            </td>
        <tr align="center" valign="middle">
        <td colspan="2">
            <input type="submit" value="提交">
        </td>
    </tr>
    </table>


</form>
</body>
</html>
