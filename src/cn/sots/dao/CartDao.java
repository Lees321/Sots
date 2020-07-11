package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.Cart;

@Repository
public interface CartDao {

	List<Cart> getProCart(@Param("userId") int userId,@Param("hid") int hid);

	Cart getProHotCart(@Param("userId") int userId,@Param("pid") int pid);

	@Select("SELECT * FROM sots_cart WHERE userId=#{userId} AND pid=#{pid}")
	Cart findCart(@Param("userId") int userId,@Param("pid")  int pid);

	@Insert("INSERT INTO sots_cart(userId,pid) VALUES (#{userId},#{pid})")
	int addCartPro(@Param("userId") int userId,@Param("pid")  int pid);
	
	@Delete("DELETE FROM sots_cart WHERE cid=#{cid}")
	int delCartPro(@Param("cid") int cid);

}
