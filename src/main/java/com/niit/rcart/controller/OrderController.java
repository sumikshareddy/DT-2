package com.niit.rcart.controller;
/*package com.niit.scart.controller;

import com.niit.scart.model.Cart;
import com.niit.scart.model.User;
import com.niit.scart.model.UserOrder;
import com.niit.scart.service.CartService;
import com.niit.scart.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;



  //This controller is used to handle user order
 
@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private OrderService orderService;
    
     //createOrder method is used to insert user order into the database.
     
    @RequestMapping("/order/{cartId}")
    public String createOrder(@PathVariable("cartId") int cartId) {
    	UserOrder userOrder = new UserOrder();
        Cart cart=cartService.getCartById(cartId);
        System.out.println("cart:"+cart.getCartid());
        userOrder.setCart(cart);

        User user = cart.getUser();
        userOrder.setUser(user);
        
        //userOrder.setShippingAddress(user.getShippingAddress());

        orderService.addOrder(userOrder);

        return "redirect:/checkout?cartId="+cartId;
    }
}
*/