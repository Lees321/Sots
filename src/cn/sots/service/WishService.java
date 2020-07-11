package cn.sots.service;

import java.util.List;

import cn.sots.pojo.User;
import cn.sots.pojo.Wish;

public interface WishService {

	int addWishPro(int userId, int pid);

	int delWishPro(int userId, int pid);

	List<Wish> getWishPro(int userId);

	User Findwish(int userId, int pid);

}
