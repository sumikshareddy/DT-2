package com.niit.rcart.DAO;

import java.io.IOException;
import java.util.List;

import com.niit.rcart.model.Cart;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.User;
import com.niit.rcart.model.UserOrder;

public interface CartDAO {

	public List<Cart> viewAllCart();
	public void deleteCart(int cartid);
	public void addCart(Cart cart);
	public List<Cart> getCartById(int cartId) ;
	public void updateCart(Cart cart);
	
	
}
	
