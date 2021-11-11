<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 18:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="bean1" class="cn.itcast.domain.News"></jsp:useBean>
<jsp:useBean id="bean2" class="cn.itcast.domain.CharactorEncode"></jsp:useBean>
<jsp:setProperty name="bean1" property="*"></jsp:setProperty>
<html>
<head>
    <title>处理新闻发布页面</title>
</head>
<body>
<div>
    <table border="0" width="40%" align="center" valign="middle">
        <tr>
            <td>
                <font color="gray"><b><%=bean2.toString(bean1.getTitle())%></b></font>
            </td>
        </tr>
        <tr align="left" valign="midlle">
            <td>
                <%=bean2.toString(bean1.getContent())%>
            </td>

        </tr>
    </table>
</div>
</body>
</html>
