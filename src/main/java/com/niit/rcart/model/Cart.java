package com.niit.rcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.GenericGenerator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "Cart")
@Component
public class Cart {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	public Integer cartid;
	
	@Column
	private Integer quantity;
	
	@ManyToOne
	@JoinColumn(name="User",nullable=false)
	private User user;
	
	@ManyToOne
	@JoinColumn(name="Product",nullable = false)
	private Product product;
	
	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Integer getCartid() {
		return cartid;
	}

	public void setCartid(Integer cartid) {
		this.cartid = cartid;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public void setTotalPrice(double d) {
		// TODO Auto-generated method stub
		
	}

	
			
}
