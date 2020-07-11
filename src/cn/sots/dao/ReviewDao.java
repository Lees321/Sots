package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.Product;
import cn.sots.pojo.Review;

@Repository
public interface ReviewDao {

	List<Review> getProReview(@Param("proCode")String proCode);
	
	@Insert("INSERT INTO sots_review(userId,reViews,vCode) VALUES(#{userId},#{reViews},#{proCode})")
	int addReviewPro(@Param("userId")int userId,@Param("reViews") String reViews,@Param("proCode") String proCode);
	

}
