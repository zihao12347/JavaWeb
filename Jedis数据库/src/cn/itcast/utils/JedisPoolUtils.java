package cn.itcast.utils;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * 连接池的工具类
 */
public class JedisPoolUtils {
    //创建静态的JedisPool对象
    private static JedisPool jedisPool;
    //创建静态代码块，当类加载后，就读取该代码块
    static {
        /**
         * 加载配置文件
         *      1.创建properties对象
         *      2.获取配置文件的输入流
         *      3.load()加载配置文件
         */  // 1.创建properties对象
        Properties properties=new Properties();
        //2.加载配置文件的输入流
        InputStream resourceAsStream = JedisPoolUtils.class.getClassLoader().getResourceAsStream("jedis.properties");
        try {
            // 3.load()加载配置文件
            properties.load(resourceAsStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //二：获取配置文件中的数据，配置到JedisPoolConfig中
            //创建JedisPoolConfig对象
        JedisPoolConfig jedisPoolConfig=new JedisPoolConfig();
            //设置JdeisPoolConfig对象的配置属性
        jedisPoolConfig.setMaxTotal(Integer.parseInt(properties.getProperty("maxTotal")));
        jedisPoolConfig.setMaxIdle(Integer.parseInt(properties.getProperty("maxIdle")));
        //实例化JedisPool对象，指定host和port
        jedisPool=new JedisPool(properties.getProperty("host"),Integer.parseInt(properties.getProperty("port")));

    }

    //创建获取连接池中的jedis对象方法
    public Jedis getjedis(){
        //获取连接对象并返回
        return jedisPool.getResource();

    }

}
