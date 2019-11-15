package books.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import books.dao.AdsDao;
import books.dao.LoginDao;
import books.model.Ads;
import books.model.Users;


@Controller
public class UserController {
	@Autowired LoginDao loginDao;
	@Autowired AdsDao adsDao;
	
	@RequestMapping({"/error","404"}) 
	public ModelAndView error() {		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("404");
		return mav;
	}
	
	@RequestMapping({"/dashboard"}) 
	public ModelAndView dashboard() {		
		List<Ads> list = adsDao.getAdds();
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",list);
		mav.addObject("dashboard",new Ads());
		mav.setViewName("dashboard");
		return mav;
	}
	
	
	
	@RequestMapping({"/contact-us"}) 
	public ModelAndView contact_us() {		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("contact-us");
		return mav;
	}
	
	@RequestMapping({"/index","","/"}) 
	public ModelAndView index(@ModelAttribute("users")Users users) {		
		ModelAndView mav = new ModelAndView();
		List<Users> login= loginDao.getUsers(users);
		mav.addObject("login",login);
		mav.setViewName("index");
		return mav;
	}
	
	@RequestMapping({"login"}) 
	public ModelAndView login() {		
		ModelAndView mav = new ModelAndView();
		mav.addObject("users",new Users());
		mav.setViewName("login");
		return mav;
	}
	
	@RequestMapping({"product-details"}) 
	public ModelAndView product_details() {		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("product-details");
		return mav;
	}
	
	@RequestMapping({"shop"}) 
	public ModelAndView shop() {		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("shop");
		return mav;
	}
	
	@RequestMapping({"register"}) 
	public ModelAndView register() {		
		ModelAndView mav = new ModelAndView();
		mav.addObject("users",new Users());
		mav.setViewName("register");
		return mav;
	}

}

	
	
