package cn.sots.service;

import java.util.List;

import cn.sots.pojo.BlReview;

public interface BlReviewService {

	List<BlReview> getBlogBlReview(int blogId);

	int addBlReview(String brContent, int userId, int blogId);

}
