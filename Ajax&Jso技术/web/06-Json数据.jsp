<%--
  Created by IntelliJ IDEA.
  User: Y7000
  Date: 2020/9/11
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Json数据</title>
</head>
<body>
<script>
    /**
     * Json:JavaScript Object Notation JavaScript对象表达式
     *     *定义Json数据
     *     *获取Json数据
     */
        //1.定义Json数据的基本模式
    var person1 = {"name": "itheima", "age": "20", "address": "北京"}
    //for in变量获取json数据
    for (var key in person1){
        //遍历获取person1中的key值
        alert(key+":"+person1[key]);
    }
    //2.Json数据的桥套模式：[]--->{}在数组中定义{}
    var person2 = [
        {"name": "itheima1", "age": "18", "address": "北京"},
        {"name": "itheima2", "age": "19", "address": "上海"},
        {"name": "itheima3", "age": "20", "address": "深圳"}
    ]
   //2.遍历获取数据的每一个元素的key值：————定义2个for in 遍历获取
    for (var key in person2){
        for (var  key2 in person2[key]){
            alert(key2+":"+(person2[key])[key2])
        }
    }


</script>
</body>
</html>
