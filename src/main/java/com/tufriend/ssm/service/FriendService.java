package com.tufriend.ssm.service;

import com.tufriend.ssm.bean.FriendInfo;
import com.tufriend.ssm.dao.FriendInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FriendService {
    @Autowired
    private FriendInfoMapper friendInfoMapper;

    public void addOneFriend(FriendInfo friendInfo){
        friendInfoMapper.insertSelective(friendInfo);
    }

    public List<FriendInfo> selectAllFriendInfo() {
        return friendInfoMapper.selectByExample(null);
    }

    public FriendInfo seleOneFriendInfo(int id) {
        return friendInfoMapper.selectByPrimaryKey(id);
    }

    public void updateOneFriendInfo(FriendInfo friendInfo) {
        friendInfoMapper.updateByPrimaryKeySelective(friendInfo);
    }

    public void deleteOneFriendInfo(int id) {
        friendInfoMapper.deleteByPrimaryKey(id);
    }
}
