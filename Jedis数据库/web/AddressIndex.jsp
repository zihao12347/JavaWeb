<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/9/17
  Time: 12:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-3.3.1.min.js">


    </script>
    <script> //添加页面加载事件
    $(function () {
            alert("发送ajax请求")
            //发送ajax的get请求
            $.post("findServlet", {}, function (data) {
                //获取select对象
                var select = $("#select1")
                //遍历json数据
                $(data).each(function () {
                    //3.创建<option>
                    var option = "<option name='" + this.id + "'>" + this.name + "</option>";
                    //4.调用select的append追加option
                    select.append(option);
                })

            })
        }
    )
    </script>
</head>
<body>
<select id="select1">
    <option>请选择您当前所在的地区</option>
</select>
</body>
</html>
