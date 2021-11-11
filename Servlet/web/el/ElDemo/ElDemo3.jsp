<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/5
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>通过EL获取数组和集合中的元素</title>
</head>
<body>
<h2>获取数组中的元素</h2>
<%
    //创建数组
    String [] str={"Java从入门到精通","JavaWeb开发编程技术","JavaEE框架整合开发"};
    //将数组保存到requst作用域中
    request.setAttribute("var_str",str);
%>
<%
    //获取request作用域中的数组
    String[] var_str =(String[]) request.getAttribute("var_str");
    //遍历数组
    for (int i = 0; i <var_str.length; i++) {
        request.setAttribute("str_i",i);
        %>
    ${requestScope.str_i}:${requestScope.var_str[str_i]}<br>
<%
        //‘[]’运算符获取指定数组或者集合的元素
    }
%>

<h2>获取集合中的元素</h2>
<%
    //创建List集合
    ArrayList<String> list = new ArrayList<>();
    list.add("香蕉");
    list.add("牛奶");
    list.add("果冻");
    //将list集合保存到request中
    request.setAttribute("var_list",list);
%>
<%
    //获取list集合
    List<String> var_list =(List<String>) request.getAttribute("var_list");
    for (int i = 0; i <var_list.size() ; i++) {
        request.setAttribute("list_i",i);
  %>
    ${list_i}:${var_list[list_i]}<br>

<%
    }
%>
</body>
</html>
