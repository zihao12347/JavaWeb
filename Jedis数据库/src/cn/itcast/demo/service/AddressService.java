package cn.itcast.demo.service;

import cn.itcast.demo.domain.Address;

import java.util.List;

public interface AddressService {
    //通过mysql数据库查询数据
    List<Address> findaddress();
    //通过redis数据库查询
    String findredis();
}
