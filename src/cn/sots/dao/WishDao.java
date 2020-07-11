package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.User;
import cn.sots.pojo.Wish;


@Repository
public interface WishDao {
	
	
	@Insert("INSERT INTO sots_wish(userId,pid) VALUES(#{userId},#{pid})")
	int addWishPro(@Param("userId") int userId,@Param("pid") int pid);
	
	@Delete("DELETE FROM sots_wish WHERE userId=#{userId} and pid=#{pid}")
	int delWishPro(@Param("userId") int userId,@Param("pid") int pid);

	List<Wish> getWishPro(int userId);
	
	@Select("SELECT * FROM sots_wish WHERE userId=#{userId} and pid=#{pid}")
	User Findwish(@Param("userId") int userId,@Param("pid") int pid);


}
