package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.CartDao;
import cn.sots.pojo.Cart;
import cn.sots.service.CartService;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartDao cartDao;

	@Override
	public List<Cart> getProCart(int userId, int hid) {
		// TODO Auto-generated method stub
		return cartDao.getProCart(userId,hid);
	}

	@Override
	public Cart getProHotCart(int userId, int pid) {
		// TODO Auto-generated method stub
		return cartDao.getProHotCart(userId,pid);
	}

	@Override
	public Cart findCart(int userId, int pid) {
		// TODO Auto-generated method stub
		return cartDao.findCart(userId,pid);
	}

	@Override
	public int addCartPro(int userId, int pid) {
		// TODO Auto-generated method stub
		return cartDao.addCartPro(userId,pid);
	}

	@Override
	public int delCartPro(int cid) {
		// TODO Auto-generated method stub
		return cartDao.delCartPro(cid);
	}
	
	
}
