package com.niit.rcart.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.rcart.model.Category;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.User;
import com.niit.rcart.service.ICategoryService;
import com.niit.rcart.service.IProductService;
import com.niit.rcart.service.IUserService;

// @Controller annotation just tells the container that this bean is a designated controller class
@Controller
public class HomeController {	
	
//By default,whereever spring containers finds @autowire anotation,it autowires bean byType. You can use @Autowire annotation on setter method to get rid of <property> tag in XML configuration file.
	
	@Autowired
	ICategoryService iCategoryService;
	
	@Autowired
	IProductService iProductService;
	
	@Autowired
	IUserService iUserService;
	//@RequestMapping annotation is used to map a particular HTTP request method 
	@RequestMapping(value = { "/" , "home"})
	public ModelAndView index() {
		System.out.println("home");
		return new ModelAndView("index").addObject("Categorys",iCategoryService.viewAllCategory());
	}
	
	@RequestMapping(value = { "aboutUs" })
	public ModelAndView aboutUs() {
		System.out.println("aboutUs");
		return new ModelAndView("aboutUs").addObject("Welcome",iUserService.getUser());
	}
	
	@RequestMapping(value = { "contactUs" })
	public ModelAndView contactUs() {
		System.out.println("contact");
		return new ModelAndView("contactUs").addObject("Welcome",iUserService.getUser());
	}
	
	
	
	@RequestMapping(value = { "login" })
	public ModelAndView Login() {
		System.out.println("Login");
		return new ModelAndView("home","command",new User()).addObject("login", true);
	}
	
	@RequestMapping(value = { "register" })
	public ModelAndView register() {
		System.out.println("register");
		return new ModelAndView("home","command",new User()).addObject("register", true);
	}
	@RequestMapping(value = { "logout" })
	public ModelAndView logout() {
		System.out.println("logout");
		return new ModelAndView("index","command",new User()).addObject("logout", true).addObject("Welcome",iUserService.setUser(null));
	}
	
	/*@RequestMapping(value = { "welcome" })
	public ModelAndView welcome() {
		System.out.println("welcome");
		return new ModelAndView("welcome","command",new User()).addObject("welcome", true);
	}
	*/
	/*@RequestMapping(value = { "buy" })
	public ModelAndView buy() {
		System.out.println("buy");
		return new ModelAndView("buy");
	}*/
	@RequestMapping(value = { "confirm" })
	public ModelAndView confirm() {
		System.out.println("confirm");
		return new ModelAndView("confirm");
	}
	@RequestMapping(value = { "/accessdenied" })
	public ModelAndView error() {
		System.out.println("error");
		return new ModelAndView("error");
	}
	@RequestMapping(value = { "alogin" })
	public ModelAndView alogin() {
		System.out.println("alogin");
		return new ModelAndView("alogin");
	}
	/*@RequestMapping(value = { "/adminpg" })
	public ModelAndView adminpg() {
		System.out.println("cart");
		return new ModelAndView("adminpg");
	}
*/

}
