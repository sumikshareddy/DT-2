package com.niit.rcart.service;

import com.niit.rcart.model.UserOrder;


public interface OrderService 
{
     public void addOrder(UserOrder order);
    double getOrderGrandTotal(int cartId);
}
