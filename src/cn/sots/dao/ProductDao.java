package cn.sots.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import cn.sots.pojo.Product;

@Repository
public interface ProductDao {
	
	//展示餐厅信息
	@Select("SELECT * FROM `sots_product`")
	List<Product> qqgetAllList();
	
	List<Product> getAllList(Product pro);
	
	Product findID(@Param("pid") int pid);

	List<Product> getProType(@Param("yid") int yid);

	Product findHotel(@Param("pid")int pid);

	Product findproPh(@Param("pid")int pid);

	Product getProReviewaa(@Param("proCode")String proCode);
}
