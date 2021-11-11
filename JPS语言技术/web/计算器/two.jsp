<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/11/15
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%!
int a , b, c;
    String select;
%>
<%
    String as = request.getParameter("a");
    String bs = request.getParameter("b");
    String cs = request.getParameter("c");
    select = request.getParameter("select");
    if (as != null && !"".equals(as)) {
        a = Integer.parseInt(as);
    }
    if (bs != null && !"".equals(bs)) {
        b = Integer.parseInt(bs);


    }
    if (cs != null && !"".equals(cs)) {
        c = Integer.parseInt(cs);


    }
    if (select != null && !"".equals(select)) {
        if ("+".equals(select)) {
            c = a + b;
    }
    if ("-".equals(select)) {
        c = a - b;
    }
    if ("*".equals(select)) {
        c = a * b;
    }
    if ("/".equals(select)) {
        c = a / b;
    }


    }

%>
<jsp:forward page="one.jsp">
    <jsp:param name="a" value="<%=a%>"></jsp:param>
    <jsp:param name="b" value="<%=b%>"></jsp:param>
    <jsp:param name="c" value="<%=c%>"></jsp:param>
</jsp:forward>


</body>
</html>
