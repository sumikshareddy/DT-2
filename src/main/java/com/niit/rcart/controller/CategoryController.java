package com.niit.rcart.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.niit.rcart.model.Category;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.Supplier;
import com.niit.rcart.service.ICategoryService;
import com.niit.rcart.util.Util;
//The @Controller annotation is used to mark the class as the controller
@Controller
public class CategoryController {

	

	@Autowired(required=true)
	ICategoryService iCategoryService;
	
	int tcid=0;
   //The @RequestMapping annotation is used to map the request url
	@RequestMapping(value = { "/addcategory" })
	public ModelAndView addCategory(@Valid @ModelAttribute("rcart") Category c,BindingResult result) {
		System.out.println("add Category");
		
		return new ModelAndView("addcategory", "command", new Category()).addObject("category",iCategoryService.viewAllCategory()).addObject("stat", "Add Category");
		}			
	
	@RequestMapping(value={"storecategory"})
	 public ModelAndView store(HttpServletRequest request,@ModelAttribute("rcart") Category c,BindingResult result)
	 {
		 System.out.println("store");
		 iCategoryService.addCategory(c);
		 String name=Util.removeComma(c.getCname());
			c.setCname(name);
			ModelAndView mv=new ModelAndView("addcategory");
			if(result.hasErrors())
			{
				mv=new ModelAndView("addcategory", "command", new Category());/*.addObject("addsupplier", iSupplierService.viewAllSupplier());*/
						mv.addObject("errors", result.getAllErrors());
						for(ObjectError s1:result.getAllErrors())
						{
							System.out.println(s1);
						}
			}
			return new ModelAndView("addcategory", "command", new Category()).addObject("category", iCategoryService.viewAllCategory()).addObject("stat","Add supplier");
		}
		@RequestMapping(value = { "/Category/storecategory" })
	public ModelAndView updateCategory(HttpServletRequest request, @ModelAttribute("rcart") Category c, BindingResult result) {
		System.out.println("Store Category");
		c.setCid(tcid);
		iCategoryService.updateCategory(c);
		return new ModelAndView("addcategory", "command", new Category()).addObject("category",iCategoryService.viewAllCategory());
	}
	
	@RequestMapping(value = { "Category/delete" })
	public ModelAndView delete(HttpServletRequest request) {
		
		String cid=request.getParameter("c");
		iCategoryService.deleteCategory(Integer.parseInt(cid));
		System.out.println("Delete Category");
		return new ModelAndView("addcategory", "command", new Category()).addObject("category",iCategoryService.viewAllCategory());
	}
	@RequestMapping(value = { "/Category/edit" })
	public ModelAndView edit(HttpServletRequest request) {
		System.out.println("Edit Category");
		String cid=request.getParameter("c");
		tcid=iCategoryService.editCategory(Integer.parseInt(cid)).getCid();
		System.out.println(tcid);
		return new ModelAndView("addcategory", "command", iCategoryService.editCategory(Integer.parseInt(cid))).addObject("category",iCategoryService.viewAllCategory()).addObject("stat", "Edit Category");
	}
	
	
}
