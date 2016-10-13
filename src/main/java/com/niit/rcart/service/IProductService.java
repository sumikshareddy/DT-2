package com.niit.rcart.service;

import java.util.List;

import com.niit.rcart.model.Category;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.Supplier;

public interface IProductService {
	void addProduct(Product p);
	
	public List<Product> viewAllProducts();
	public List<Product> viewAllProducts(Category c);
	public List<Product> viewAllProduct(Supplier s);
	public void deleteProduct(int pid);
	public Product editProduct(int pid);
	public void updateProduct(Product p);
	public Product cart(int pid);
}

