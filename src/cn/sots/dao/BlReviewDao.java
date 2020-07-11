package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.BlReview;

@Repository
public interface BlReviewDao {

	List<BlReview> getBlogBlReview(int blogId);
	
	//博客评论增加
	@Insert("INSERT INTO sots_blreview (brContent,userId,blogId) VALUES (#{brContent},#{userId},#{blogId})")
	int addBlReview(@Param("brContent") String brContent,@Param("userId") int usrId,@Param("blogId") int blogId);
}
