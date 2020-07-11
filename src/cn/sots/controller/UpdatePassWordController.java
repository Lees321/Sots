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
public class UpdatePassWordController {
	@Autowired
	private UppwService uppwService;
	 
	 @RequestMapping(value="/updateword",method=RequestMethod.POST)
	    public String update(HttpServletRequest request,User user,HttpSession session) {
		
	       String userName=request.getParameter("userName");
	       String userPassword=request.getParameter("userPassword");
	       user.setUserName(userName);
	       user.setUserPassword(userPassword);
	        int list = uppwService.update(user);
	        session.setAttribute("list", list);
	        return "login";
	        
	    }
}
