package com.tufriend.ssm.test;

import com.tufriend.ssm.bean.FriendInfo;
import com.tufriend.ssm.dao.FriendInfoMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.UUID;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:applicationContext.xml"})
public class DaoTest {
    @Autowired
    private FriendInfoMapper friendInfoMapper;

    /*
    * 插入数据
    * */
    @Test
    public void testC(){
        for (int i = 0; i < 20; i++){
            String name = UUID.randomUUID().toString().substring(0, 5) + "-" + i;
            String phone = UUID.randomUUID().toString().substring(0, 9);
            String address = name + phone;
            friendInfoMapper.insertSelective(new FriendInfo(name, phone,address));
        }
    }
}
