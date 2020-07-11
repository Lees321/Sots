package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.ReviewDao;
import cn.sots.pojo.Product;
import cn.sots.pojo.Review;
import cn.sots.service.ReviewService;
@Service
public class ReviewServiceImpl implements ReviewService {
	
	@Autowired
	private ReviewDao reviewDao;

	@Override
	public List<Review> getProReview(String proCode) {
		// TODO Auto-generated method stub
		return reviewDao.getProReview(proCode);
	}

	@Override
	public int addReviewPro(int userId, String reViews, String proCode) {
		// TODO Auto-generated method stub
		return reviewDao.addReviewPro(userId,reViews,proCode);
	}
	
}
