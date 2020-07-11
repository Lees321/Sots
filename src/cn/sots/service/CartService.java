package cn.sots.service;

import java.util.List;

import cn.sots.pojo.Cart;

public interface CartService {

	List<Cart> getProCart(int userId,int hid);

	Cart getProHotCart(int userId, int pid);

	Cart findCart(int userId, int pid);

	int addCartPro(int userId, int pid);

	int delCartPro(int cid);

}
