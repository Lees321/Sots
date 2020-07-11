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

import com.alibaba.druid.sql.visitor.functions.Isnull;
import com.alibaba.fastjson.JSON;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.sots.pojo.Cart;
import cn.sots.pojo.Product;
import cn.sots.pojo.User;
import cn.sots.service.CartService;

@Controller
@RequestMapping("/cart")
public class CartController {
	
	@Autowired
	private CartService cartService;
	
	@RequestMapping(value="/getCart",method=RequestMethod.GET)
	public String getList(@RequestParam(name="currpage",defaultValue="1") int currpage, 
			Model model, HttpServletRequest request, HttpSession session) {
		int hid = Integer.parseInt(request.getParameter("hid"));
		int pid=Integer.parseInt(request.getParameter("pid"));
		if (request.getParameter("dates")!=null) {
			String dates = request.getParameter("dates");
			session.setAttribute("dates", dates);
		}
		if (request.getParameter("qtyInput")!=null) {
			int adultsNum = Integer.parseInt(request.getParameter("qtyInput"));
			session.setAttribute("adultsNum", adultsNum);
		}
		if (request.getParameter("hid")==null) {
			hid=-1;
		}
		if (request.getParameter("pid")==null) {
			pid=-1;
		}
		int userId = ((User)session.getAttribute("loginUser")).getUserId();
		Cart proHC=null;
		List<Cart> proC =null;
		int h=0;
		int p=0;
		if (hid<0 && pid<0) {
			List<Cart> proCx = cartService.getProCart(userId,hid);//查询景点门票，餐厅
			if (proCx!=null) {
				for (Cart cart : proCx) {
					for (Product s : cart.getProducts()) {
						if (s.getHid()!=0 && p==0) {
							proHC = cartService.getProHotCart(userId,s.getPid());//查询酒店订单
							p=p+1;
						} else if(h==0){
							proC = cartService.getProCart(userId,s.getHid());//查询景点门票，餐厅
							h=h+1;
						}
					}
				}
			}
		} else {
			Cart ca = cartService.findCart(userId,pid);//判断是否已添加商品
	        if (ca==null) {
	        	int add = cartService.addCartPro(userId,pid);
			}
			proC = cartService.getProCart(userId,hid);//查询景点门票，餐厅
			proHC = cartService.getProHotCart(userId,pid);//查询酒店订单
		}
		model.addAttribute("proC", proC);
		model.addAttribute("proHC", proHC);//cart-1
		return "jsp/cart-1";
	}
	
	@RequestMapping(value="/addCart",method=RequestMethod.POST)
	// 因为页面上传递的是表单数据，而表单操作的是实体类型，所以我们这里就使用实体类来进行接收
	public void addCart(@RequestParam("pid") int pid,
			Model model, HttpServletRequest request, HttpSession session) {
		// 获得当前登录的用户id
        int userId =  ((User)session.getAttribute("loginUser")).getUserId();
        Cart ca = cartService.findCart(userId,pid);//判断是否已添加商品
        if (ca==null) {
        	int add = cartService.addCartPro(userId,pid);
		}
        
	}
	
	@RequestMapping(value="/delCart",method=RequestMethod.GET)
	// 因为页面上传递的是表单数据，而表单操作的是实体类型，所以我们这里就使用实体类来进行接收
	public Object deleteCart(@RequestParam("cid") int cid,
			Model model, HttpServletRequest request, HttpSession session) {
		// 获得当前登录的用户id
//        int userId =  ((User)session.getAttribute("loginUser")).getUserId();
        int add = cartService.delCartPro(cid);
        return "jsp/cart-1";
	}
	
}
