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

            //JQquery的$.ajax()方法实现ajax方式
            function fun() {
                $.ajax({
                    /*url:"ajaxServlet?username=zihao",
                    type:"GET",*/
                    url:"ajaxServlet",
                    type:"POST",
                    //data:"username=zihao&age=20",
                    data:{"username":"zihao","age":"20"},
                    success:function (data) {
                        alert(data)
                    },
                    error:function () {
                        alert("出错啦~")
                    },
                    datatype:"text"
                    
                })

            }


    </script>
</head>
<body>
<input type="button" value="发送异步请求" onclick="fun()">
<input type="text">
</body>
</html>
