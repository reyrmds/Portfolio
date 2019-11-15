package books.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import books.dao.LoginDao;
import books.dao.AdsDao;
import books.model.Users;
import books.model.Ads;

@Controller
public class LoginController {
	
	@Autowired LoginDao loginDao;
	@Autowired AdsDao adsDao;
	
	
	
	@RequestMapping({"/login/submit"}) 
	public ModelAndView login(@ModelAttribute("users")Users users){		
		ModelAndView mav = new ModelAndView();
		List<Users> user= loginDao.getUsers(users);
		mav.addObject("user",user);
		mav.addObject("users",new Users());
		mav.setViewName("index-users");
		return mav;
	}

	@RequestMapping(value="/register/submit", method = RequestMethod.POST)
	public ModelAndView register(@ModelAttribute("users")Users users){	
		loginDao.save(users);
		ModelAndView mav = new ModelAndView();
		List<Users> user= loginDao.getUsers(users);
		mav.addObject("user",user);
		mav.addObject("users",new Users());
		mav.setViewName("index-users");
		return mav;
	}
	
	
	
	@RequestMapping(value="ad-post/{id}",method = RequestMethod.GET)
	public ModelAndView adpost(@PathVariable int id) {
		List<Users> user= loginDao.getName(id);
		List<Users> userinfo= loginDao.getUserinfo(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("user",user);
		mav.addObject("userinfo",userinfo);
		mav.addObject("ads",new Ads());
		mav.setViewName("ad-post");
		return mav;
	}
	
	@RequestMapping(value="index/{id}",method = RequestMethod.GET)
	public ModelAndView index_user(@PathVariable int id) {
		List<Users> user= loginDao.getName(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("user",user);
		mav.addObject("users",new Users());
		mav.setViewName("index-users");
		return mav;
	}
	
	@RequestMapping(value="shop/{id}",method = RequestMethod.GET)
	public ModelAndView shop_user(@PathVariable int id) {
		List<Users> user= loginDao.getName(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("user",user);
		mav.addObject("users",new Users());
		mav.setViewName("shop-users");
		return mav;
	}
	@RequestMapping(value="contact-us/{id}",method = RequestMethod.GET)
	public ModelAndView contact_user(@PathVariable int id) {
		List<Users> user= loginDao.getName(id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("user",user);
		mav.addObject("users",new Users());
		mav.setViewName("contact-users");
		return mav;
	}

//	@RequestMapping(value = "/ad-post/submit", method = RequestMethod.POST)
//	public ModelAndView adsAdd(@ModelAttribute("ads")Ads ads) {
//		adsDao.save(ads);
//		List<Users> user= loginDao.getName(ads);
//		List<Users> userinfo= loginDao.getUserinfo(ads);
//		ModelAndView mav = new ModelAndView();
//		mav.addObject("user",user);
//		mav.addObject("userinfo",userinfo);
//		mav.addObject("ads",new Ads());
//		mav.setViewName("ad-post");
//		return mav;
//	}
//	
	@RequestMapping(value = "/ad-post/submit", method = RequestMethod.POST)
	public ModelAndView postad(@ModelAttribute("ads")Ads ads) {
		adsDao.save(ads);
		List<Users> user= loginDao.getName(ads);
		List<Users> userinfo= loginDao.getUserinfo(ads);
		List<Ads> ad=adsDao.getad(ads);
		ModelAndView mav = new ModelAndView();
		mav.addObject("user",user);
		mav.addObject("userinfo",userinfo);
		mav.addObject("ad",ad);
		mav.addObject("ads",new Ads());
		mav.setViewName("product-details-users");
		return mav;
	}


}
