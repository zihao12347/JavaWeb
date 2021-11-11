package cn.itcast.demo.service;

import cn.itcast.demo.dao.AddressDao;
import cn.itcast.demo.dao.AddressDaoImpl;
import cn.itcast.demo.domain.Address;
import cn.itcast.utils.JedisPoolUtils;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import redis.clients.jedis.Jedis;

import java.util.List;

public class AddressServiceImpl implements AddressService {
    //初始化AddressDao对象
    private AddressDao dao = new AddressDaoImpl();

    @Override
    public List<Address> findaddress() {
        List<Address> list = dao.findaddress();
        return list;
    }

    /**
     * 室友redis数据库查询并持久化
     * @return
     */
    @Override
    public String findredis() {
        //1.从redis连接池获取redis连接
        JedisPoolUtils jedisPoolUtils=new JedisPoolUtils();
        Jedis jedis = jedisPoolUtils.getjedis();
        //2.获取Redis数据库中的province数据
        String province = jedis.get("province");
        //3.判断province数据是否为空
        if (province==null||province.length()==0) {
            //4.当province为空的话表明redis中没有该key，就从mysql数据库中查询province
            List<Address> findaddress = dao.findaddress();

            try {
                //5.将findaddress数据转化成json数据
                ObjectMapper mapper=new ObjectMapper();
                province= mapper.writeValueAsString(findaddress);
            } catch (JsonProcessingException e) {
                e.printStackTrace();
            }
        }
        else {
            System.out.println("province数据库已存在redis数据库中！");
        }
        return province;
    }


}
