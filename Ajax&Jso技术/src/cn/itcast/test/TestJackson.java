package cn.itcast.test;

import cn.itcast.domain.Person;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.Test;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class TestJackson {
    @Test
    public void test1() throws Exception {
        //创建Person对象
        Person person = new Person();
        person.setName("张三");
        person.setAge(20);
        person.setAddress("杭州");
        /**将java对象转化成json字符串
         *  1.导入Jackson相关jar包
         *  2.创建Jackson核心对象ObjectMapper
         *  3.调用ObjectMapper对象的相关方法进行数据转换
         *      *WriterValueAsString(obj)将obj对象转化成字符串
         *       *WriterValue(参数1，obj)
         *         参数1：
         *            *file:将obj对象转化成字符串，并保存到指定file文件中
         *            *Writer:将obj对象转化成字符串，并将json数据填充到字符输出流中
         *            *OutputStream:将obj对象转化成字符串，并将json数据填充到字节输出流中
         */
        ObjectMapper mapper = new ObjectMapper();
        /*//将java对象转化成json字符串
        String s = mapper.writeValueAsString(person);
        System.out.println(s);*/
        /*//将obj对象转化成字符串，并保存到指定file文件中
        mapper.writeValue(new File("C:\\Users\\Y7000\\Desktop\\a.txt"),person);*/
        //将obj对象转化成字符串，并将json数据填充到字符输出流中
        mapper.writeValue(new FileWriter("C:\\Users\\Y7000\\Desktop\\b.txt"),person);
    }
    @Test
    public void test2() throws Exception {

        //创建Person对象
        Person person = new Person();
        person.setName("张三");
        person.setAge(18);
        person.setAddress("杭州");
        person.setBirthday(new Date());
        //将person转化成json字符串
            //创建json核心对象ObjectMapper
        ObjectMapper mapper=new ObjectMapper();
        //调用mapper的writerValueToString方法将java对象转化成json字符串
        String s = mapper.writeValueAsString(person);//创建Person对象
        System.out.println(s);

    }
    @Test
    public void test3() throws  Exception {
        //创建person对象

        //创建Person对象
        Person person1 = new Person();
        person1.setName("张三");
        person1.setAge(18);
        person1.setAddress("杭州");
        person1.setBirthday(new Date());
        Person person2 = new Person();
        person2.setName("李四");
        person2.setAge(19);
        person2.setAddress("北京");
        person2.setBirthday(new Date());
        Person person3 = new Person();
        person3.setName("王五");
        person3.setAge(20);
        person3.setAddress("深圳");
        person3.setBirthday(new Date());
        //创建一个list集合存放person对象
       List<Person> list = new ArrayList<>();
       list.add(person1);
        list.add(person2);
        list.add(person3);
        //创建Json核心对ObjectMapper
        ObjectMapper mapper=new ObjectMapper();
        String s = mapper.writeValueAsString(list);
        //List数组存放对象转化后的格式是一个数组
        System.out.println(s);

    }
    @Test
    public void test4() throws Exception {
        //创建map集合
        Map<String, Object> map = new HashMap<>();
        map.put("name","张三");
        map.put("age",20);
        map.put("address","北京");
        //创建Json核心对象ObjectMapper
        ObjectMapper mapper=new ObjectMapper();
        //将map集合转化成json字符串
        String s = mapper.writeValueAsString(map);
        System.out.println(s);
    }

    /**
     * 模拟将Json字符串转化成java对象
     */
    @Test
    public void test5() throws  Exception {
        //创建json字符串
        String json="{\"name\": \"itheima1\", \"age\": \"18\", \"address\": \"北京\"}";
        //创建json核心对象ObjectMapper
        ObjectMapper mapper=new ObjectMapper();
        Person person = mapper.readValue(json, Person.class);
        System.out.println(person);


    }

    public static void main(String[] args) {

    }
}
