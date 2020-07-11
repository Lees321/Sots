package cn.sots.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.sots.pojo.Product;
import cn.sots.pojo.User;
import cn.sots.pojo.Wish;
import cn.sots.service.WishService;

@Controller
@RequestMapping("/wish")
public class WishController {
	
	@Autowired
	private WishService wishService;
	
	
	@RequestMapping(value="/getWish",method=RequestMethod.GET)
	// 因为页面上传递的是表单数据，而表单操作的是实体类型，所以我们这里就使用实体类来进行接收
	public String getWish(@RequestParam(name="currpage",defaultValue="1") int currpage, 
			Model model, HttpServletRequest request, HttpSession session) {
		// 获得当前登录的用户id
        int userId =  ((User)session.getAttribute("loginUser")).getUserId();
        if (request.getParameter("pid") !=null) {
			int pid=Integer.parseInt(request.getParameter("pid"));
			User li = wishService.Findwish(userId,pid);
	        if (li==null) {
	            int add = wishService.addWishPro(userId,pid);
			}
		}
        PageHelper.startPage(currpage, 6);
        List<Wish> list = wishService.getWishPro(userId);
	    PageInfo pageInfo = new PageInfo(list, 6);
        model.addAttribute(pageInfo);
//        model.addAttribute("wishList", wishList);//wishlist
        return "jsp/wishlist";
	}
	
	
	@RequestMapping(value="/addWish",method=RequestMethod.POST)
	// 因为页面上传递的是表单数据，而表单操作的是实体类型，所以我们这里就使用实体类来进行接收
	@ResponseBody
	public Object addWish(@RequestParam("pid") int pid,
			Model model, HttpServletRequest request, HttpSession session) {
		// 获得当前登录的用户id
		Map<String, Integer> map = new HashMap<String, Integer>();
        int userId =  ((User)session.getAttribute("loginUser")).getUserId();
        User li = wishService.Findwish(userId,pid);
        if (li==null) {
            int add = wishService.addWishPro(userId,pid);
            if (session.getAttribute("aaa")!=null) {
				session.removeAttribute("aaa");
				int aaa=2;
	            session.setAttribute("aaa", aaa);
			}
            map.put("result", 1);
		}
        return JSON.toJSONString(map);
	}
	
	@RequestMapping(value="/delWish",method=RequestMethod.GET)
	// 因为页面上传递的是表单数据，而表单操作的是实体类型，所以我们这里就使用实体类来进行接收
	@ResponseBody
	public Object deleteWish(@RequestParam("pid") int pid,
			Model model, HttpServletRequest request, HttpSession session) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		// 获得当前登录的用户id
        int userId =  ((User)session.getAttribute("loginUser")).getUserId();
        int add = wishService.delWishPro(userId,pid);
        if (add>0) {
        	if (session.getAttribute("aaa")!=null) {
				session.removeAttribute("aaa");
				int aaa=1;
	            session.setAttribute("aaa", aaa);
			}
        	map.put("result", 1);
		}else {
			map.put("result", 0);
		}
        return JSON.toJSONString(map);
	}
}
