package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.Blog;


import cn.sots.pojo.Product;
@Repository
public interface PhotosDao {
	@Select("select * from sots_product where yid=#{yid} limit 0,6")
	List<Product> getPhotos(@Param("yid") int yid);

	List<Blog> getBolglist();
}
