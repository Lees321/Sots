package cn.sots.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import cn.sots.pojo.Blog;

@Repository
public interface BlogDao {

	List<Blog> getBloglist(Blog bl);

	Blog getBlogPost(int blogId);

}
