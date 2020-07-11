package cn.sots.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.UppwDao;
import cn.sots.pojo.User;
import cn.sots.service.UppwService;
@Service
public class UppwServiceImpl implements UppwService {
@Autowired
private UppwDao uppwDao;
	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		return uppwDao.updateword(user);
	}
	@Override
	public User getre(String userName) {
		// TODO Auto-generated method stub
		return uppwDao.getre(userName);
	}


}
