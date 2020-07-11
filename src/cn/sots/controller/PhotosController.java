package cn.sots.controller;

import java.util.List;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import cn.sots.pojo.Blog;

import cn.sots.pojo.ProPhotos;
import cn.sots.pojo.Product;
import cn.sots.service.PhotosService;

@Controller
public class PhotosController {
	@Autowired
	private PhotosService photosService;
	@RequestMapping(value="/Index",method=RequestMethod.GET)
	public Object getPhotosAll(Model model,ServletRequest session) {		
		int yid1=1;
		int yid2=2;
		int yid3=3;
		List<Product> list = photosService.getPhotos(yid1);
		List<Product> list2 = photosService.getPhotos(yid2);
		List<Product> list3 = photosService.getPhotos(yid3);
		List<Blog> blist = photosService.getBolglist();
		model.addAttribute("blist",blist);
		model.addAttribute("list",list);
		model.addAttribute("list2",list2);	
		model.addAttribute("list3",list3);			
		return "index";
		
	}
	
	@RequestMapping(value="/inlogin")
	public Object getlogin() {		
					
		return "login";
		
	}
	@RequestMapping(value="/About")
	public Object getAbout() {		
					
		return "jsp/about";
		
	}
	@RequestMapping(value="/Faq")
	public Object getFaq() {		
		return "jsp/faq";
		
	}
	
	@RequestMapping(value="/Register")
	public Object getRegister() {		
		
		return "jsp/register";
		
	}
	
	@RequestMapping(value="/Contacts")
	public Object getContacts() {		
		
		return "jsp/contacts";
		
	}
	/*
	 * @RequestMapping(value="/getBolglist",method=RequestMethod.GET) public Object
	 * getBolglist(Model model,HttpSession session) {
	 * 
	 * session.setAttribute("blist",blist);
	 * 
	 * return "index";
	 * 
	 * }
	 */
}
