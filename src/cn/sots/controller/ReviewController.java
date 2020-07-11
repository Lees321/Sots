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

import cn.sots.pojo.Review;
import cn.sots.pojo.User;
import cn.sots.service.ProductService;
import cn.sots.service.ReviewService;
//import cn.sots.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/reviewPro",method=RequestMethod.POST)
	// 因为页面上传递的是表单数据，而表单操作的是实体类型，所以我们这里就使用实体类来进行接收
    @ResponseBody
	public Object getList(@RequestParam("reViews") String reViews,
			Model model, HttpServletRequest request, HttpSession session) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		String proCode = request.getParameter("proCode");
		// 获得当前登录的用户id
        int userId =  ((User)session.getAttribute("loginUser")).getUserId();
        int add = reviewService.addReviewPro(userId,reViews,proCode);
        if (add>0) {
        	map.put("result", 1);
		}else {
			map.put("result", 0);
		}
        return JSON.toJSONString(map);
	}
}
