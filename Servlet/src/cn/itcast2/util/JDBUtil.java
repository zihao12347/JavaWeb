package cn.itcast2.util;

import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Properties;

/**
 * JDBC工具类，使用Druid连接池
 */
public class JDBUtil {
    private static DataSource ds;
    //加载配置文件
    static {
        try {
            //1.创建properties对象
            Properties properties=new Properties();
            //load()方法加载配置文件,获取字节输入流
            InputStream rs = JDBUtil.class.getClassLoader().getResourceAsStream("driud.properties");
            //获取连接池对象
            properties.load(rs);
            ds = DruidDataSourceFactory.createDataSource(properties);

        } catch (IOException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }

    }




    /**
     * 1：获取连接池对象
     */
    public static DataSource getDataSource(){
        return ds;
    }

    /**
     * 2.获取连接Connection对象
     */
    public static Connection getConnection() throws SQLException {
        return ds.getConnection();
    }
}
