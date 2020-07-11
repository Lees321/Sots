package cn.sots.service;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.sots.pojo.Blog;

import cn.sots.pojo.ProPhotos;
import cn.sots.pojo.Product;

public interface PhotosService {
	//查询
	
	List<Product> getPhotos(int yid1);
	List<Blog> getBolglist();
}
