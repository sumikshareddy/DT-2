package com.niit.rcart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.rcart.model.Cart;
import com.niit.rcart.model.User;
import com.niit.rcart.DAO.CartDAO;

@Service("CartService")
public class CartService implements ICartService{
	
	@Autowired(required=true)
	private CartDAO cd;
	
	public void addCart(Cart cart)
	{
		cd.addCart(cart);
	}
	
    public List<Cart> viewAllCart()
    {
	    return cd.viewAllCart();
    }
	
	public void deleteCart(int cartid)
	{
		cd.deleteCart(cartid);
	}
	

    public void update(Cart cart) {
        cd.updateCart(cart);
    }

	
	public List<Cart> getCartById(int cartid) {
	
		return cd.getCartById(cartid);
	}

}
