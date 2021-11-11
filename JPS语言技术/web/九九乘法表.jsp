<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/8
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>九九乘法表</title>
</head>
<body>
<%
    //定义一个string字符串
    String  str="";
    for (int i = 1; i <9 ; i++) {
        for (int j = 1; j <=i ; j++) {
            str+=i+"*"+j+"="+i*j;
            str+="&nbsp";   //加入空格
        }
        str+="<br>";    //加入换行
    }
%>
<table border="1" align="center" valign="middle" width="280" height="220">
    <tr>
        <td align="center" valign="middle">
            九九乘法表
        </td>
    </tr>
    <tr>
        <td>
            <%=str%>
        </td>
    </tr>
</table>
</body>
</html>
