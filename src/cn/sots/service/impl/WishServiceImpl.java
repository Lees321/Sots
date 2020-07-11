package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.WishDao;
import cn.sots.pojo.User;
import cn.sots.pojo.Wish;
import cn.sots.service.WishService;
@Service
public class WishServiceImpl implements WishService {
	
	@Autowired
	private WishDao wishDao;

	@Override
	public int addWishPro(int userId, int pid) {
		// TODO Auto-generated method stub
		return wishDao.addWishPro(userId,pid);
	}

	@Override
	public int delWishPro(int userId, int pid) {
		// TODO Auto-generated method stub
		return wishDao.delWishPro(userId,pid);
	}

	@Override
	public List<Wish> getWishPro(int userId) {
		// TODO Auto-generated method stub
		return wishDao.getWishPro(userId);
	}

	@Override
	public User Findwish(int userId, int pid) {
		// TODO Auto-generated method stub
		return wishDao.Findwish(userId,pid);
	}
}
