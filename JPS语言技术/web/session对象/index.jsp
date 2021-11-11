<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 23:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户输入用户名页面</title>
</head>
<body>
<form name="form1" method="post" action="session.jsp" >
    <table border="0" align="center" width="23%">
        <tr>
            <td width="36%">
                <div align="center">
                    您的名字：
                </div>
            </td>
            <td>
                <div align="center">
                    <label>
                        <input type="text" name="name">
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
