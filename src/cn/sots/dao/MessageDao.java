package cn.sots.dao;

import org.apache.ibatis.annotations.Insert;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.Message;

@Repository
public interface MessageDao {
	
	//增加信息
	@Insert("insert into sots_message(userName,userAddress,userEmail,userPhone,suggestion,createTime) "
			+ "values(#{userName},#{userAddress},#{userEmail},#{userPhone},#{suggestion},#{createTime})")
	int addMessage(Message message);
	
}
