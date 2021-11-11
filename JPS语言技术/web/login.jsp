<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/8/21
  Time: 20:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>登入页面</title>
</head>
<script>
    /**
     * 分析：
     * 点击超链接或者图片，切换验证码图片
     *      1.给图片或者超链接绑定相应事件
     *      2.给图片设置新的src属性
     */
    window.onload=function (ev) {
        //获取img图片对象
        var img=document.getElementById("img")
        //给img图片对象添加点击事件，当点击后，设置新的src属性，实现切换验证码图片
        img.onclick=function (ev1) {
            //获取当前时间
            var time=new Date().getTime();
            //改变src属性,映射位置后面添加每次点击的时间，保证每次切换的验证码图片不一样
            img.src="checkCodeServlet?"+time;
        }
    }
</script>
<style>
    #tips{
        color: red;
    }
</style>
<body>
<form action="loginservlet" method="post">
    <table border="0" width="420" align="center" valign="middle">
        <tr>
            <td align="center" valign="middle" bgcolor="aqua" colspan="2">
                用户登入
            </td>
        </tr>
        <tr>
            <td id="tips" align="center" valign="middle" colspan="2">
                <%=request.getAttribute("error_checkcode")==null?"":request.getAttribute("error_checkcode")%>
                <%=request.getAttribute("error_login")==null?"":request.getAttribute("error_login")%>
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
                用户名:
            </td>
            <td>
                <input type="text" name="user">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
                密码:
            </td>
            <td>
                <input type="password" name="password">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td>
                验证码:
            </td>
            <td>
                <input type="text" name="checkcode">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td colspan="2">
                <img id="img" src="checkCodeServlet">
            </td>
        </tr>
        <tr align="center" valign="middle">
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
