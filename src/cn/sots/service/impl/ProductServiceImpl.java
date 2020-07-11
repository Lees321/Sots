package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.ProductDao;
import cn.sots.pojo.Product;
import cn.sots.service.ProductService;
@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	private ProductDao ProductDao;
	
	@Override
	public List<Product> getAllList(Product pro) {
		// TODO Auto-generated method stub
		return ProductDao.getAllList(pro);
	}

	@Override
	public Product findID(int pid) {
		// TODO Auto-generated method stub
		return ProductDao.findID(pid);
	}

	@Override
	public List<Product> getProType(int yid) {
		// TODO Auto-generated method stub
		return ProductDao.getProType(yid);
	}

	@Override
	public Product findHotel(int pid) {
		// TODO Auto-generated method stub
		return ProductDao.findHotel(pid);
	}

	@Override
	public Product findproPh(int pid) {
		// TODO Auto-generated method stub
		return ProductDao.findproPh(pid);
	}

	@Override
	public Product getProReview(String proCode) {
		// TODO Auto-generated method stub
		return ProductDao.getProReviewaa(proCode);
	}

	

}
