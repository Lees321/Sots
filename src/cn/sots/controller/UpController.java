package cn.sots.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.sots.pojo.User;
import cn.sots.service.UppwService;
@Controller
public class UpController {
	@Autowired
	private UppwService uppwService;
	 @RequestMapping(value="/send1",method=RequestMethod.GET)
	    public String update(HttpSession session,HttpServletRequest request) {
		String userName=request.getParameter("userName");
	      User user=uppwService.getre(userName);
	       
	        
	        if (user==null) {
	        	return "jsp/losspassword";
	        } else {
	        	System.out.println("进来了");
	        	session.setAttribute("user", user);
	            
	            return "redirect:send2";
	        }
	        
	    }
}
