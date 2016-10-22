package com.niit.rcart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.rcart.model.Cart;
import com.niit.rcart.model.UserOrder;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.User;
import com.niit.rcart.service.CartService;
import com.niit.rcart.service.ICartService;
import com.niit.rcart.service.IOrderService;
import com.niit.rcart.service.IProductService;
import com.niit.rcart.service.IUserService;
//The @Controller annotation is used to mark the class as the controller
@Controller
public class CartController {
	                             
	@Autowired(required=true)
	ICartService iCartService;
	
	@Autowired(required=true)
	IProductService iProductService;
	
	@Autowired(required=true)
	IUserService iUserService;
	
	@Autowired
	IOrderService iOrderService;
	
	int cart1=0;
	//The @RequestMapping annotation is used to map the request url
	@RequestMapping(value = { "/cart" })
	public ModelAndView Cart(HttpServletRequest request)
	{
		System.out.println("cart");
		
		return new ModelAndView("addcart").addObject("cart",iCartService.viewAllCart());
	}
	
	@RequestMapping(value = { "viewcart" })
	public ModelAndView cart(HttpServletRequest request, @ModelAttribute("rcart") Product p,BindingResult result) {
		System.out.println("View Cart");
		return new ModelAndView("viewcart").addObject("cart",iCartService.viewAllCart());
	}
	
	@RequestMapping(value = { "/storecart" })
	public ModelAndView addcart(HttpServletRequest request, @ModelAttribute("rcart") Product p,BindingResult result) {
		System.out.println("Store Cart");
		String pid = request.getParameter("p");
		Cart c=new Cart();
		c.setProduct(iProductService.editProduct(Integer.parseInt(pid)));
		c.setQuantity(1);
		c.setTotalPrice(0.0);
		System.out.print("adding to cart "+iUserService.getUser());
		c.setUser(iUserService.getUser());
		iCartService.addCart(c);
		System.out.println("heyyu");
		String jsonData="";
		//objectmapper is used 2 bring value instead of returning the total object

				ObjectMapper mapper=new ObjectMapper();
				System.out.println("reddy");
				try 
				{
					jsonData=mapper.writeValueAsString(iCartService.viewAllCart());
					System.out.println("DT: "+jsonData);
				}
				catch (JsonGenerationException e)
				{
					System.out.println("return");
					e.printStackTrace();
				}
				catch (JsonMappingException e)
						
				{
					System.out.println("reddy31");
					e.printStackTrace();
				}
				catch (IOException e)
				{
					e.printStackTrace();
				}
				System.out.println("items added to list");
				return new ModelAndView("cart","cartItem",c).addObject("scart", jsonData).addObject("cart", iCartService.viewAllCart()).addObject("Welcome",iUserService.getUser());
				

		//return new ModelAndView("cart","cartItem",c).addObject("cart",iCartService.viewAllCart());
	}
	
	@RequestMapping(value = { "/updateCart" })
	public ModelAndView updateCart(){
		return new ModelAndView("updateCart");
	}
	@RequestMapping(value = { "cart/delete" })
	public String delete(HttpServletRequest request) 
	{
		String cartid = request.getParameter("c");
		iCartService.deleteCart(Integer.parseInt(cartid));
		System.out.println("Delete Product");
		iCartService.viewAllCart();
		return "redirect:/addcart";
		//return new ModelAndView("cart", "command", new Cart()).addObject("cart",iCartService.viewAllCart());
	}
		
	@RequestMapping(value = { "continue/cart"})
	public ModelAndView cont(HttpServletRequest request) 
	{
		System.out.println("Continue");
		return new ModelAndView("index").addObject("continue",true).addObject("Welcome",iUserService.getUser());
	}
	
	
	@RequestMapping(value = { "cart/order" })
	public String check(HttpServletRequest request,String c)
	{
		System.out.println("order");
		UserOrder order=new UserOrder();
		String car=request.getParameter("c");
		System.out.println("yup"+car);
		int cid= Integer.parseInt(car);
		System.out.println("yes");
		List<Cart> cart=iCartService.getCartById(cid);
		System.out.println(cart);
		System.out.println("cart");
		System.out.println("jhgfdv");
		User user=null;
		for(Cart ct:cart){
			user=ct.getUser();
		}
		order.setUser(user);
		//order.setShippingAddress(user.getShippingAddress());
		System.out.println("ship");
		iOrderService.addOrder(order);
		System.out.println("ord");
        user.getUid();
        System.out.println("user id");
		return "redirect:/shippingAddress";
		}
}