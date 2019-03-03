package com.tufriend.ssm.dao;

import com.tufriend.ssm.bean.FriendInfo;
import com.tufriend.ssm.bean.FriendInfoExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface FriendInfoMapper {
    long countByExample(FriendInfoExample example);

    int deleteByExample(FriendInfoExample example);

    int deleteByPrimaryKey(Integer fId);

    int insert(FriendInfo record);

    int insertSelective(FriendInfo record);

    List<FriendInfo> selectByExample(FriendInfoExample example);

    FriendInfo selectByPrimaryKey(Integer fId);

    int updateByExampleSelective(@Param("record") FriendInfo record, @Param("example") FriendInfoExample example);

    int updateByExample(@Param("record") FriendInfo record, @Param("example") FriendInfoExample example);

    int updateByPrimaryKeySelective(FriendInfo record);

    int updateByPrimaryKey(FriendInfo record);
}