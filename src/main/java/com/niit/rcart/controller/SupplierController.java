package com.niit.rcart.controller;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.rcart.model.Category;
import com.niit.rcart.model.Supplier;
import com.niit.rcart.service.ISupplierService;
import com.niit.rcart.util.Util;
//The @Controller annotation is used to mark the class as the controller
@Controller
public class SupplierController 
{
	 @Autowired(required=true)
	 ISupplierService iSupplierService;
	 
	 int tsid=0;
	 Supplier supp;
	 //The @RequestMapping annotation is used to map the request url
	 @RequestMapping(value={"addsupplier"})
	 public ModelAndView addsupplier(@ModelAttribute("rcart") Supplier s,BindingResult result)
	 {
		 System.out.println("add supplier");
		 return new ModelAndView("addsupplier","command",new Supplier()).addObject("supplier",iSupplierService.viewAllSupplier()).addObject("stat","Add supplier");
	 }
	 
	 @RequestMapping(value={"storesupplier"})
	 public ModelAndView store(HttpServletRequest request,@ModelAttribute("rcart") Supplier s,BindingResult result)
	 {
		 System.out.println("store");
		 iSupplierService.addSupplier(s);
		 String name=Util.removeComma(s.getSname());
			s.setSname(name);
			ModelAndView mv=new ModelAndView("addsupplier");
			if(result.hasErrors())
			{
				mv=new ModelAndView("addsupplier", "command", new Supplier());/*.addObject("addsupplier", iSupplierService.viewAllSupplier());*/
						mv.addObject("errors", result.getAllErrors());
						for(ObjectError s1:result.getAllErrors())
						{
							System.out.println(s1);
						}
			}
			return new ModelAndView("addsupplier", "command", new Supplier()).addObject("supplier", iSupplierService.viewAllSupplier()).addObject("stat","Add supplier");
		}
	 @RequestMapping(value = { "/Supplier/storesupplier" })
		public ModelAndView updateSupplier(HttpServletRequest request, @ModelAttribute("rcart") Supplier s, BindingResult result) {
			System.out.println("Store Supplier");
			s.setSid(tsid);
			iSupplierService.updateSupplier(s);
			return new ModelAndView("addsupplier", "command", new Supplier()).addObject("supplier",iSupplierService.viewAllSupplier());
		}
		
		@RequestMapping(value = { "/Supplier/delete" })
		public ModelAndView delete(HttpServletRequest request) {
			
			String sid=request.getParameter("s");
			iSupplierService.deleteSupplier(Integer.parseInt(sid));
			System.out.println("Delete supplier");
			return new ModelAndView("addsupplier", "command", new Supplier()).addObject("supplier",iSupplierService.viewAllSupplier());
		}
		@RequestMapping(value = { "/Supplier/edit" })
		public ModelAndView edit(HttpServletRequest request) {
			System.out.println("Edit Supplier");
			String sid=request.getParameter("s");
			tsid=iSupplierService.editSupplier(Integer.parseInt(sid)).getSid();
			System.out.println(tsid);
			return new ModelAndView("addsupplier", "command", iSupplierService.editSupplier(Integer.parseInt(sid))).addObject("category",iSupplierService.viewAllSupplier()).addObject("stat", "Edit Category");
		}
		
		
	}