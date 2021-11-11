<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 22:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="pape" class="cn.itcast.domain.Paper"></jsp:useBean>
<jsp:setProperty name="pape" property="*"></jsp:setProperty>
<jsp:useBean id="convert" class="cn.itcast.domain.Convert"></jsp:useBean>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>调查结果</h2>
<ul>
    <li>
        您经常使用的编程语言：<%=convert.arr2str(pape.getLanguages())%>
    </li>
    <li>
        您目前所掌握的技术：<%=convert.arr2str(pape.getTechnics())%>
    </li>
    <li>
        您在学习中感觉有困难的部分：<%=convert.arr2str(pape.getParts())%>
    </li>

</ul>
</body>
</html>
