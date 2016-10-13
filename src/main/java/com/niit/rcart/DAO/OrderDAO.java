package com.niit.rcart.DAO;

import com.niit.rcart.model.UserOrder;


public interface OrderDAO {

    void addOrder(UserOrder userOrder);
    public double getOrderGrandTotal(int cartId);

}
