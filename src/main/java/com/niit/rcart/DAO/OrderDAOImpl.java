package com.niit.rcart.DAO;

import com.niit.rcart.DAO.OrderDAO;
import com.niit.rcart.model.Cart;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.UserOrder;
import com.niit.rcart.service.CartService;
import com.niit.rcart.service.IOrderService;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;



@Repository
@Transactional
public class OrderDAOImpl implements OrderDAO{

        @Autowired
        private SessionFactory sessionFactory;
        @Autowired
        private IOrderService iOrderService;
        @Transactional(propagation = Propagation.SUPPORTS)
        public void addOrder(UserOrder userOrder) {
            Session session = sessionFactory.getCurrentSession();
            Transaction tx=session.beginTransaction();
            session.saveOrUpdate(userOrder);
            tx.commit();
            
        }
        @Transactional(propagation = Propagation.SUPPORTS)
		public double getOrderGrandTotal(int cartId) {
        	Session session = sessionFactory.getCurrentSession();
            Transaction tx=session.beginTransaction();
            
        
			return 0;
		}
}
