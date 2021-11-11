<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/9/19
  Time: 22:39
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户登入页面</title>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script>
        //推荐页面加载事件
        $(function () {
            //获取username对象, 并添加失去焦点事件
            $("#username").blur(function () {
                var username = $(this).val();
               $.get("ajaxDemoServlet",{username:username},function (data) {
                   //获取span1对象
                   var span1=$("#span1")
                  //判断data.userExsit是否为true，是的话表示用户名已存在
                   if (data.userExsit==true){
                       //在span中设置提示语
                       span1.css("color","red")
                       span1.html(data.msg);
                   }else {
                       span1.html("<img src=\"u=788884473,765079801&fm=26&gp=0.jpg\" width=\"26px\" height=\"26px\">")
                   }
               })
            })
        })
    </script>
</head>
<body>

<table align="center" valign="middle" width="32%" height="200">
    <tr align="center" valign="middle">
        <td>
            用户名:
        </td>
        <td>
            <input type="password" name="username" id="username">
            <span id="span1"></span>
        </td>
    </tr>
    <tr align="center" valign="middle">
        <td>
            密&nbsp&nbsp&nbsp&nbsp码:
        </td>
        <td>
            <input type="text" name="password" id="password">
        </td>
    </tr>
    </tr>
    <tr align="center" valign="middle">
        <td>
            <input type="submit">
        </td>

    </tr>
</table>
</body>
</html>
