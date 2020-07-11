package cn.sots.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.sots.pojo.Product;
import cn.sots.pojo.Review;
import cn.sots.pojo.User;
import cn.sots.service.ProductService;
import cn.sots.service.ReviewService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService ProductService;
	@Autowired
	private ReviewService reviewService;
	
	@RequestMapping(value="/getProduct",method=RequestMethod.GET)
	public String getList(@RequestParam(name="currpage",defaultValue="1") int currpage, 
			Model model, HttpServletRequest request, HttpSession session) {
		int op = Integer.parseInt(request.getParameter("op"));
		int yid=Integer.parseInt(request.getParameter("yid"));
		String proName=request.getParameter("proName");
		String proType=request.getParameter("proType");//"历史";
		String proAddress=request.getParameter("proAddress");//"中国";
		Product pro = new Product(proName,proType,proAddress,yid);
		
		List<Product> typepro = ProductService.getProType(yid);
		for (Product product : typepro) {
			System.out.println("类型："+product.getProType());
		}
		model.addAttribute("typepro", typepro);
		session.setAttribute("op", op);//op页面展示方式 0为原（grid九宫格）页面
		session.setAttribute("yid", yid);//yid商品类型展示
        if(op == 0) {
        	PageHelper.startPage(currpage, 6);
        	List<Product> list = ProductService.getAllList(pro);
    	    PageInfo pageInfo = new PageInfo(list, 6);
            model.addAttribute(pageInfo);
            return "jsp/restaurants-grid-isotope";
        }else {
        	PageHelper.startPage(currpage, 5);
    	    List<Product> list = ProductService.getAllList(pro);
    	    PageInfo pageInfo = new PageInfo(list, 5);
            model.addAttribute(pageInfo);
        	return "jsp/restaurants-list-isotope";
        }
	}
	
	@RequestMapping(value="/Detail",method=RequestMethod.GET)
	public String getDetail(Model model, HttpServletRequest request, HttpSession session) {
		// yid判断跳转的子页面
		int yid=Integer.parseInt(request.getParameter("yid"));
		int pid=Integer.parseInt(request.getParameter("pid"));
		String proCode = request.getParameter("proCode");
		
		Product proId = ProductService.findID(pid);
		Product proPhotos = ProductService.findproPh(pid);
		List<Review> proReview = reviewService.getProReview(proCode);
//		model.addAttribute("proCode", proCode);
		model.addAttribute("proId", proId);
		model.addAttribute("proPh", proPhotos);
		model.addAttribute("proReview", proReview);
		for (Review c : proReview) {
			System.out.println(c.getUsers());
		}
        if(yid == 1) {
            return "jsp/tour-detail";
        }else if(yid==2){
        	Product hotelId = ProductService.findHotel(pid);
        	model.addAttribute("hotelId", hotelId);
        	//hotel-detail
        	return "jsp/hotel-detail";
        }else {
        	return "jsp/restaurant-detail";
        }
	}	
	
	
	
	
	
}
