package cn.sots.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.sots.dao.MessageDao;
import cn.sots.pojo.Message;
import cn.sots.service.MessageService;
@Service
public class MessageServiceImpl implements MessageService {
	
	@Autowired
	private MessageDao messageDao;
	
	@Override
	public boolean addMessage(Message message) {
		int result = messageDao.addMessage(message);
		if(result > 0) {
			return true;
		}else {
			return false;
		}
	}

}
