
package com.niit.rcart.service;


import com.niit.rcart.DAO.OrderDAO;
import com.niit.rcart.model.Cart;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.UserOrder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;



@Service
public class IOrderService implements OrderService{

    @Autowired
    private OrderDAO cd;

   

	public void addOrder(UserOrder order) {
		cd.addOrder(order);
	}

	public double getOrderGrandTotal(int cartId) {
		
		return cd.getOrderGrandTotal(cartId);
	}
}
