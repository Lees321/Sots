package cn.sots.service;

import java.util.List;


import cn.sots.pojo.Product;
public interface ProductService {
	
	//展示餐厅信息
	List<Product> getAllList(Product pro);

	List<Product> getProType(int yid);
	
	//查询景点，餐厅子页面
	Product findID(int pid);

	//查询商品子页面
	Product findHotel(int pid);
	//查询商品子页面的图片
	Product findproPh(int pid);
	//查询商品的评论
	Product getProReview(String proCode);

	
	
}
