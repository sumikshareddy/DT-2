package com.niit.rcart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.rcart.model.User;
import com.niit.rcart.service.ICategoryService;
import com.niit.rcart.service.IUserService;
//The @Controller annotation is used to mark the class as the controller
@Controller
public class UserController {
	
	//By default,whereever spring containers finds @autowire anotation,it autowires bean byType. You can use @Autowire annotation on setter method to get rid of <property> tag in XML configuration file.
	@Autowired
	IUserService iUserService;
		
	@Autowired
	ICategoryService iCategoryService;
	User user=null;
	
	//The @RequestMapping annotation is used to map the request url
	@RequestMapping(value = "store", method=RequestMethod.POST)
	public ModelAndView register(/*HttpServletRequest request,*/@Valid @ModelAttribute("scart") User u,BindingResult result) {
		System.out.println("Register");
		//iUserService.addUser(u);
		ModelAndView mv=new ModelAndView("store");
		System.out.println("store");
		if(result.hasErrors()){
			mv=new ModelAndView("register", "command", new User());
					mv.addObject("errors", result.getAllErrors());
					for(ObjectError s:result.getAllErrors()){
						System.out.println(s);
					}
		}
		else{
			iUserService.addUser(u);
		mv=new ModelAndView("login", "command", new User());
		}
		return mv;
		//return new ModelAndView("home","command",new User()).addObject("login", true);
	}
	
	//@modelattribute An annotated method parameter can be mapped to an attribute in a model .
	
	@RequestMapping(value = { "LoginUser" })
	public ModelAndView Login(HttpServletRequest request,@ModelAttribute("rcart") User u,BindingResult result) {
		System.out.println("Login");
		 user=iUserService.verify(u);
		ModelAndView mv=new ModelAndView("home","Welcome",user).addObject("Categorys",iCategoryService.viewAllCategory());
		System.out.println(user.getRole()+"What if");
		
		if(user.getRole()==1)
		{
			System.out.println(user.getRole()+"is admin");
			mv.addObject("userRole","isAdmin");
		}
		else if(user.getRole()==2)
		{
			System.out.println(user.getRole());
			mv.addObject("userRole","isSupplier");
		}
		
		return mv;
	}
	
	@RequestMapping(value = { "/adminpg" })
	public ModelAndView adminpg() {
		System.out.println("adminpg");
		return new ModelAndView("adminpg","command", new User());
	}
	
	@RequestMapping(value = { "/myProfile" })
	public ModelAndView myProfile() {
		System.out.println("myProfile");
		return new ModelAndView("myProfile","command",user);
	}
}