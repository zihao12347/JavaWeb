<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/7/1
  Time: 23:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>实现点击验证码或者点击超链接切换验证码图片</title>
    <script>
        /**
         * 分析:
         *  点击超链接或者图片切换验证码图片
         *    1.给图片或者超链接绑定事件
         *    2.重新设置设置图片的src属性值
         *
         */

        window.onload=function (ev) {
            //获取img图片对象
           var img1 = document.getElementById("checkcode");
           //绑定单击事件
            img1.onclick=function (ev1) {
                //添加时间戳
                var time=new Date().getTime();
                img1.src="checkCodeServlet?"+time;
            }
        }
    </script>
</head>
<body>
<img  src="checkCodeServlet" id="checkcode">
<a href="">看不清换一张！</a>
</body>
</html>
