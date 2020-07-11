package cn.sots.service;

import java.util.List;

import cn.sots.pojo.Blog;

public interface BlogService {


	List<Blog> getBloglist(Blog bl);

	Blog getBlogPost(int blogId);

}
