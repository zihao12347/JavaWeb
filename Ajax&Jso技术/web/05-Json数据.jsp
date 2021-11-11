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
    //alert(persoon1)
    //1.获取数据1：json对象.键名
    var name = person1.name;
   // alert(name)
    //2.获取数据2：json对象["键名"]
     var age = person1.age;
   // alert(age)

    //1.定义Json数据的嵌套模式：{}--->[]在大括号中定义数组
    var person2 = {
        "person":
            [{"name": "itheima1", "age": "18", "address": "北京"},
                {"name": "itheima2", "age": "19", "address": "上海"},
                {"name": "itheima3", "age": "20", "address": "深圳"}
            ]
    }
    //alert(person2)
    //获取数组对象,数组对象[index]：例如获取itheima3
    var person = person2.person[2].name;
   // alert(person)


    //3.Json数据的桥套模式：[]--->{}在数组中定义{}
    var person3 = [
        {"name": "itheima1", "age": "18", "address": "北京"},
        {"name": "itheima2", "age": "19", "address": "上海"},
        {"name": "itheima3", "age": "20", "address": "深圳"}
    ]
    //alert(person3)
    //获取itheima2
    var name1 = person3[1].name;
    alert(name1)



</script>
</body>
</html>
