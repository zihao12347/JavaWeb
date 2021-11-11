package cn.itcast.jedis;

import jdk.nashorn.internal.scripts.JD;
import org.junit.Test;
import redis.clients.jedis.Jedis;

import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 * Jedis的测试类
 */
public class JedisTest {
    @Test
    public void testjedis1(){
        //创建Jedis对象
        Jedis jedis=new Jedis("localhost",6379);
        //通过jedis操作Redis数据库
        jedis.set("name","zihao");
        jedis.set("age","20");
        //关闭连接
        jedis.close();
    }
    @Test
    public void test2(){
        //创建Jedis对象:当空参构造方时，默认值："localhost",6379端口号
       Jedis jedis=new Jedis();
        /**
         * 操作字符串类型的值
         *    存储：set key value
         *    setex(key seconds value)存储指定时间过期的key value键值对
         *   获取:get key
         *   删除：del key
         */

        jedis.set("name","zhangsan");
        String username = jedis.get("name");
        System.out.println(username);
        jedis.del(username);
        jedis.setex("activecode",20,"active");


     jedis.close();
    }

    /**
     * 测试hash数据类型
     */
    @Test
    public void test3(){

        /**
         * 操作哈希类型的值
         *      存储：hset
         *      获取:
         *          * hget key field
         *          * hgetall key
         *      删除：hdel key field
         *
         */
        Jedis jedis=new Jedis();
       jedis.hset("myhash","name","lisi");
        jedis.hset("myhash","age","20");
        String s = jedis.hget("myhash", "name");
        System.out.println(s);
        Map<String, String> myhash = jedis.hgetAll("myhash");
        System.out.println(myhash);
        jedis.close();
    }

    /**
     * 测试列表数据类型:可重复，
     *          存储：
     *          * lpush key strings
     *          * rpush key strings
     *          获取：lrange key [start] [end]
     *          删除：
     *          * lpop key
     *          * rpop key
     *
     * */
    @Test
    public void test4(){
        Jedis jedis=new Jedis();
        jedis.rpush("mylist","wangwu","20","male");
        jedis.lpush("mylist","jiujiangxueyuan");
        List<String> mylist = jedis.lrange("mylist", 0, -1);
        System.out.println(mylist);
        jedis.lpop("mylist");
        jedis.close();
    }

    /**
     * 测试集合数据类型：(set)不可重复，无序
     *      存储：sadd key members
     *      获取:sget members
     *      删除：srem key member
     */
    @Test
    public void test5(){
        Jedis jedis=new Jedis();
        jedis.sadd("myset","set1","set2","set3");
        Set<String> myset = jedis.smembers("myset");
        for (String s : myset) {
            System.out.println(s);

        }

    }

    /**
     * 测试有序数组：(zset)不可重复，有序
     *      存储：zadd key score member
     *      获取：zrange key [start] [end]
     *      删除：zrem key member
     */
    @Test
    public void test6(){
        Jedis jedis=new Jedis();
        jedis.zadd("myzset",50,"zihao");
        jedis.zadd("myzset",60,"zset1");
        Set<String> myzset = jedis.zrange("myzset", 0, -1);
        for (String s : myzset) {
            System.out.println(s);
        }

    }

}
