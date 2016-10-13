package com.niit.rcart.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
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

import com.niit.rcart.model.Cart;
import com.niit.rcart.model.Category;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.User;
import com.niit.rcart.service.ICartService;
import com.niit.rcart.service.ICategoryService;
import com.niit.rcart.service.IProductService;
import com.niit.rcart.service.ISupplierService;
import com.niit.rcart.service.IUserService;
import com.niit.rcart.util.Util;

@Controller
public class ProductController 
{
	@Autowired(required = true)
	IProductService iProductService;

	@Autowired(required = true)
	ICategoryService iCategoryService;

	@Autowired(required = true)
	ICartService iCartService;
	
	@Autowired(required = true)
	IUserService iUserService;
	
	@Autowired(required=true)
	ISupplierService iSupplierService;

	int tpid = 0;
	
	/* give the request to add the product*/
	@RequestMapping(value = { "/addproduct" })
	public ModelAndView addCategory(@Valid @ModelAttribute("rcart") Category c,BindingResult result) {
		System.out.println("add Product");
		
		return new ModelAndView("addproduct", "command", new Product()).addObject("product",iProductService.viewAllProducts()).addObject("Category",iCategoryService.viewAllCategory()).addObject("Supplier",iSupplierService.viewAllSupplier()).addObject("stat", "Add Product");
		}	

	/*to store the product*/
	@RequestMapping(value = { "storeproduct" })
	public String storeProduct(HttpServletRequest request, @RequestParam("image") MultipartFile file,ModelMap model, @ModelAttribute("rcart") Product p,BindingResult result) 
	{	
		
		int cid=Integer.parseInt(request.getParameter("category"));
		int sid=Integer.parseInt(request.getParameter("supplier"));
		System.out.println("Store Product "+cid);
		p.setCategory(iCategoryService.editCategory(cid));
		p.setSupplier(iSupplierService.editSupplier(sid));
		String name=Util.removeComma(p.getPname());
		p.setPname(name);
		for(ObjectError o:result.getAllErrors())
		{
			iProductService.addProduct(p);
			String fileName = null,error="";
	    	if (!file.isEmpty()) 
	    	{
	            try
	            {
	                fileName = file.getOriginalFilename();
	                System.out.println(fileName);
	                byte[] bytes = file.getBytes();
	                BufferedOutputStream buffStream = new BufferedOutputStream(new FileOutputStream(new File("C:\\Users\\sumiksha reddy\\shopkhoj\\rcart\\src\\main\\webapp\\resources\\project\\" + fileName)));
	                buffStream.write(bytes);
	                buffStream.close();
	                error= "You have successfully uploaded " + fileName;
	            }
	            catch (Exception e) 
	            {
	            	error="You failed to upload " + fileName + ": " + e.getMessage();
	            }
	        } 
	    	else
	    	{
	        	error="Unable to upload. File is empty.";
	        }
	    	File oldName = new File("C:\\Users\\sumiksha reddy\\shopkhoj\\rcart\\src\\main\\webapp\\resources\\project\\" + fileName);
	        File newName = new File("C:\\Users\\sumiksha reddy\\shopkhoj\\rcart\\src\\main\\webapp\\resources\\project\\" + p.getPid()+fileName.substring(fileName.indexOf(".")));
	        System.out.println(p.getPid());
	        if(oldName.renameTo(newName))
	        {
	           error=p.getPname()+" Profile Upload Successfully !";
	        }
		//iProductService.addProduct(p);
		}
		return "redirect:/addproduct";
		//return new ModelAndView("addproduct", "command", new Product()).addObject("products", iProductService.viewAllProducts()).addObject("Category",iCategoryService.viewAllCategory()).addObject("supplier",iSupplierService.viewAllSupplier()).addObject("stat", "Add Product");
	}
	
	@RequestMapping(value = { "/Product/storeproduct" })
	public String updateProduct(HttpServletRequest request, @ModelAttribute("cart") Product p,BindingResult result) 
	{
		System.out.println("Store Product");
		p.setPid(tpid);
		iProductService.updateProduct(p);
		return "redirect:/addproduct";
		//return new ModelAndView("addproduct", "command", new Product()).addObject("addproduct", iProductService.viewAllProducts());
	}

	@RequestMapping(value = { "Product/delete" })
	public String delete(HttpServletRequest request) 
	{
		String pid = request.getParameter("p");
		iProductService.deleteProduct(Integer.parseInt(pid));
		System.out.println("Delete Product");
		return "redirect:/addproduct";
		//return new ModelAndView("addproduct", "command", new Product()).addObject("products",iProductService.viewAllProducts());
	}

	@RequestMapping(value = { "/Product/edit" })
	public String edit(HttpServletRequest request) 
	{
		System.out.println("Edit Product");
		String pid = request.getParameter("p");
		tpid = iProductService.editProduct(Integer.parseInt(pid)).getPid();
		System.out.println(tpid);
		return "redirect:/addproduct";
		//return new ModelAndView("addproduct", "command", iProductService.editProduct(Integer.parseInt(pid))).addObject("products", iProductService.viewAllProducts()).addObject("Category",iCategoryService.viewAllCategory()).addObject("supplier",iSupplierService.viewAllSupplier()).addObject("stat", "Edit Product");
	}
	
	@RequestMapping(value = { "products" })
	public ModelAndView women(HttpServletRequest request) 
	{
		
		int cid=Integer.parseInt(request.getParameter("c"));
		Category c=iCategoryService.editCategory(cid);
		System.out.println("category "+cid);
		String jsonData="";
		//objectmapper is used 2 bring value instead of returning the total object
		ObjectMapper mapper=new ObjectMapper();
		try 
		{
			jsonData=mapper.writeValueAsString(iProductService.viewAllProducts(iCategoryService.viewCategory(cid)));
			System.out.println(jsonData);
		}
		catch (JsonGenerationException e)
		{
			e.printStackTrace();
		}
		catch (JsonMappingException e) 
		{
			e.printStackTrace();
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		return new ModelAndView("products").addObject("sproducts", jsonData).addObject("products", iProductService.viewAllProducts(iCategoryService.viewCategory(cid))).addObject("Welcome",iUserService.getUser());
	}
	
	@RequestMapping(value = { "productdetails" })
	public ModelAndView productdetails(HttpServletRequest request,Product p) 
	{
		System.out.println("productdetails");
		String pid = request.getParameter("p");
		return new ModelAndView("productdetails","p",iProductService.editProduct(Integer.parseInt(pid))).addObject("product",p).addObject("Welcome",iUserService.getUser());
	}
	
	/*@RequestMapping(value = { "Product/cart" })
	public ModelAndView cart(HttpServletRequest request)
	{
		String pid = request.getParameter("p");
		System.out.println("cart");
		return new ModelAndView("cart","p",iProductService.editProduct(Integer.parseInt(pid))).addObject("cart",iCartService.viewAllCart()).addObject("products",iProductService.viewAllProducts());
	}*/
}