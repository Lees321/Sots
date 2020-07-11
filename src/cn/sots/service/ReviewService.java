package cn.sots.service;

import java.util.List;

import cn.sots.pojo.Product;
import cn.sots.pojo.Review;

public interface ReviewService {

	List<Review> getProReview(String proCode);

	int addReviewPro(int userId, String reViews, String proCode);

}
