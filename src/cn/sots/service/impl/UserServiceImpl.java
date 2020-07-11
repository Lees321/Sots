package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.sots.dao.UserDao;
import cn.sots.pojo.User;
import cn.sots.service.UserService;
@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public User loginVerification(String userName, String userPassword) {
		// TODO Auto-generated method stub
		return userDao.loginVerification(userName, userPassword);
	}

	@Override
	public User findUserId(String name) {
		// TODO Auto-generated method stub
		return userDao.findUserId(name);
	}

	@Transactional(rollbackFor = Error.class)
	public boolean addUser(User user) {
		int result = userDao.addUser(user);
		if(result > 0) {
			return true;
		}else {
			return false;
		}
	}

	@Override
	public List<User> getUserList() {
		// TODO Auto-generated method stub
		return userDao.getUserList();
	}

}
