<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/4
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>EL表达式运算符</title>
</head>
<body>
<h2>算术运算符</h2>
除法：/&div
${3 / 4}
${3 div 4}
取余：%&mod
${3 % 4}
${3 mod 4}
<h2>关系运算符</h2>
大于：>&gt
${3 > 4}
${3 gt 4}
小于:<&lt
${3 < 4}
${3 lt 4}
等于：==&eq
${3 == 4}
${3 eq 4}
大于或等于：>=& ge
${3>=4}
${3 ge 4}
小于或者等于：<=&le
${3<=4}
${3 le 4}
不等于：！=&ne
${3!=4}
${3 ne 4}
<h2>逻辑运算符</h2>
与：&& 或者 and
${true && false}
${true and false}
或:|| 或者 or
${true || false}
${true or false}
非：！或者 not
${ ! true}
${not true}
<h2>空运运输符</h2>
<%
    request.setAttribute("user","");
    request.setAttribute("user1",null);

%>
判断保存在request作用域范围内的参数是否为空
${empty user}
${empty user1}
<br>
判断保存在request作用域范围内的参数不为空
${not empty user}
${not empty user1}
<h2>三元运算符</h2>
${3>4?"大于":"小于"}
</body>
</html>
