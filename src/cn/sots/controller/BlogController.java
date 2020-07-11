package cn.sots.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.sots.pojo.BlReview;
import cn.sots.pojo.Blog;
import cn.sots.pojo.User;
import cn.sots.service.BlReviewService;
import cn.sots.service.BlogService;
import cn.sots.service.UserService;


@Controller
@RequestMapping("/blog")
public class BlogController {
	
	@Autowired
	private BlogService blogService; 
	
	@Autowired
	private BlReviewService blReviewService;
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/getBlog",method=RequestMethod.GET)
	public String getDetail(@RequestParam(name="currpage",defaultValue="1") int currpage,
			Model model, HttpServletRequest request, HttpSession session) {
		// yid判断跳转的子页面search
		int userId=0;
		String blogTitle=null;
		if (request.getParameter("search") != null) {
			String name=request.getParameter("search");
			User user =  userService.findUserId(name);
			if (user!=null) {
				userId=user.getUserId();
			} else {
				blogTitle=request.getParameter("search");
			}
		}
		Blog bl= new Blog(blogTitle,userId); 
		PageHelper.startPage(currpage, 5);
		List<Blog> list = blogService.getBloglist(bl);
	    PageInfo pageInfo = new PageInfo(list, 5);
        model.addAttribute(pageInfo);//blog
        return "jsp/blog";
	}	
	
	@RequestMapping(value="/getBlogPost",method=RequestMethod.GET)
	public String getDetail(Model model, HttpServletRequest request, HttpSession session) {
		// yid判断跳转的子页面
		int blogId=Integer.parseInt(request.getParameter("blogId"));
//		int blogId=1;
		Blog blpost = blogService.getBlogPost(blogId);
		List<BlReview> blReview = blReviewService.getBlogBlReview(blogId);
//		model.addAttribute("proCode", proCode);
		model.addAttribute("blpost", blpost);
		model.addAttribute("blReview", blReview);//blog-post
		return "jsp/blog-post";
	}	
}
