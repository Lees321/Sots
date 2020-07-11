package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.User;
@Repository
public interface UppwDao {
   @Update("update sots_user set userPassword=#{userPassword} where userName=#{userName}")
	int updateword(User user);
@Select("select*from sots_user where userEmail=#{userName}")
User getre(String userName);
  

}
