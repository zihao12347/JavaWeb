package cn.itcast.jedis;

import cn.itcast.utils.JedisPoolUtils;
import org.junit.Test;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class JedisPoolTest {
    /**
     * Jedis数据库连接池  ——————自定义的连接池
     */
    @Test
    public void test1() {
        //1.创建JedisPoolConfig连接池配置对象
        JedisPoolConfig jpc = new JedisPoolConfig();
        jpc.setMaxTotal(10);//设置连接最大个数
        //2.创建JedisPool连接池对象
        JedisPool jedisPool = new JedisPool(jpc, "localhost", 6379);
        //3.获取连接getResource()
        Jedis jedis = jedisPool.getResource();
        //4.操作数据库
        jedis.set("jpc", "10");
        String s = jedis.get("jpc");
        System.out.println(s);

    }

    /**
     * 测试Jedis连接池
     */
    @Test
    public void test2() {
        //初始化对象
        JedisPoolUtils jedisPoolUtils = new JedisPoolUtils();
        Jedis jedis = jedisPoolUtils.getjedis();
        jedis.set("name", "JedisPoolUtils");
        String s = jedis.get("name");
        System.out.println(s);

    }
}
