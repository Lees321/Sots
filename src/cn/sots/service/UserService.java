package cn.sots.service;

import java.util.List;

import cn.sots.pojo.User;

public interface UserService {
	

	User findUserId(String name);
	//登录的方法
    User loginVerification(String userName, String userPassword);
	
    //注册用户
    boolean addUser(User user);
    
    //展示
    List<User> getUserList();
	
}
