package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.BlReviewDao;
import cn.sots.pojo.BlReview;
import cn.sots.service.BlReviewService;

@Service
public class BlReviewServiceImpl implements BlReviewService {
	
	@Autowired
	private BlReviewDao blReviewDao;

	@Override
	public List<BlReview> getBlogBlReview(int blogId) {
		// TODO Auto-generated method stub
		return blReviewDao.getBlogBlReview(blogId);
	}

	@Override
	public int addBlReview(String brContent, int userId, int blogId) {
		// TODO Auto-generated method stub
		return blReviewDao.addBlReview(brContent,userId,blogId);
	}
	
}
