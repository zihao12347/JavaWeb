<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/9
  Time: 22:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>调查问卷</title>
</head>
<body>
<form action="将数组转化成字符串的JavaBean2.jsp" method="post">
    <div>
        <h1>调查问卷</h1>
        <hr/>
        <ul>
            <li>你经常用哪些编程语言开发程序：</li>
            <li>
                <input type="checkbox" name="languages" value="JAVA">JAVA
                <input type="checkbox" name="languages" value="PHP">PHP
                <input type="checkbox" name="languages" value=".NET">.NET
                <input type="checkbox" name="languages" value="VC++">VC++
            </li>
        </ul>
        <ul>
            <li>你目前所掌握的技术：</li>
            <li>
                <input type="checkbox" name="technics" value="HTML">HTML
                <input type="checkbox" name="technics" value="JAVA BEAN">JAVA BEAN
                <input type="checkbox" name="technics" value="JSP">JSP
                <input type="checkbox" name="technics" value="SERVLET">SERVLET
            </li>
        </ul>
        <ul>
            <li>在学习中哪一部分感觉有困难：</li>
            <li>
                <input type="checkbox" name="parts" value="JSP">JSP
                <input type="checkbox" name="parts" value="STRUTS">STRUTS
            </li>
        </ul>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提　交">
    </div>
</form>
</body>
</html>
