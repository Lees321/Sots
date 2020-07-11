package cn.sots.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.sots.pojo.Message;
import cn.sots.service.MessageService;

@Controller
public class MessageController {
	
	@Autowired
	private MessageService msgService;
	
	@RequestMapping(value = "/addMessage",method = RequestMethod.POST)
  	@ResponseBody
  	public Object addUser(Message message, HttpSession session) {
  		Map<String, Integer> map = new HashMap<String, Integer>();
  		message.setCreateTime(new Date());
		boolean isOk = msgService.addMessage(message);
		if(isOk) {
			map.put("code", 1);
		}else {
			map.put("code", 0);
		}  
		return JSON.toJSONString(map);
  	}
	
}
