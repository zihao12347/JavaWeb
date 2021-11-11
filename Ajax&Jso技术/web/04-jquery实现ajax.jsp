<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/9/9
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="js/jquery-3.3.1.min.js"></script>
<html>
<head>
    <title>JQquery的$.ajax()方法实现ajax</title>
    <script>

            //JQquery的$.post()方法实现ajax方式
            function fun() {
               $.get("ajaxServlet",{"username":"zihao","age":"20"},function (data) {
                   alert(data)
               },"text")

            }


    </script>
</head>
<body>
<input type="button" value="发送异步请求" onclick="fun()">
<input type="text">
</body>
</html>
