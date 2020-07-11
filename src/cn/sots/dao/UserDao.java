package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.User;
@Repository
public interface UserDao {
	
	//��¼�ķ���
	@Select("select * from sots_user where userName=#{userName} and userPassword=#{userPassword}")
    User loginVerification(@Param("userName") String userName,@Param("userPassword") String userPassword);
	
	@Select("SELECT userId FROM sots_user WHERE userName=#{name}")
	User findUserId(@Param("name")String name);
	
	//注册用户
		@Insert("insert into sots_user(userName,userPassword,userCode,userEmail,userPhone,userPhoto,ucid)"
				+ "values(#{userName},#{userPassword},#{userCode},#{userEmail},#{userPhone},#{userPhoto},#{ucid})")
		int addUser(User user);
		
		//展示用户
		@Select("select * from sots_user")
		List<User> getUserList();
}
