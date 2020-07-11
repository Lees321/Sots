package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.BlogDao;
import cn.sots.pojo.Blog;
import cn.sots.service.BlogService;

@Service
public class BlogServiceImpl implements BlogService {
	
	@Autowired
	private BlogDao blogDao;

	@Override
	public List<Blog> getBloglist(Blog bl) {
		// TODO Auto-generated method stub
		return blogDao.getBloglist(bl);
	}

	@Override
	public Blog getBlogPost(int blogId) {
		// TODO Auto-generated method stub
		return blogDao.getBlogPost(blogId);
	}
	
	
}
