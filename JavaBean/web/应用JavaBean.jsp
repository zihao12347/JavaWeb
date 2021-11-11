<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 17:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通过JavaBean录入用户信息功能-录入首页</title>
</head>
<body>

<form name="form1" method="post" action="应用JavaBean2.jsp">
    <table border="1" width="40%" align="center" valign="middle">
        <tr bgcolor="#00ffff">
            <td align="center" valign="middle" colspan="2">
                添加用户登入信息
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td width="32%">
                姓&nbsp&nbsp名:
            </td>
            <td width="68%">
                <input type="text" name="name">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
                年&nbsp&nbsp龄:
            </td>
            <td>
                <input type="text" name="age">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
                性&nbsp&nbsp别:
            </td>
            <td>
                <input type="text" name="sex">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
                住&nbsp&nbsp址:
            </td>
            <td>
                <input type="text" name="address">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>

    </table>
</form>
</body>
</html>
