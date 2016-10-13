package com.niit.rcart.service;

import java.util.List;

import com.niit.rcart.model.Cart;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.User;

public interface ICartService
{
	public List<Cart> viewAllCart();
	public void deleteCart(int cartid);
	public void addCart(Cart c);
	
     public void update(Cart cart);
	public List<Cart> getCartById(int cartid);

}
