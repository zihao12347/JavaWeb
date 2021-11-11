<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 18:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布新闻jsp页面</title>
</head>
<body>
<form action="决绝中文乱码的JavaBean2.jsp" name="form1" method="post">
    <table border="1" valign="middle" align="center" width="51%">
        <tr align="center" valign="middle" bgcolor="#f5f5dc">
            <td colspan="2">
                <b>新闻发布</b>
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td width="32%">
                标&nbsp&nbsp题:
            </td>
            <td width="68%">
                <input type="text" name="title">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
                内&nbsp&nbsp容:
            </td>
            <td>
                <textarea name="content" cols="40" rows="12">
                </textarea>
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td colspan="2">
                <input type="submit" value="发布">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
