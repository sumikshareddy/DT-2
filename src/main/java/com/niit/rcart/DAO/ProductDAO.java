package com.niit.rcart.DAO;

import java.util.List;

import com.niit.rcart.model.Category;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.Supplier;

public interface ProductDAO 
{
	void addProduct(Product p);
	public List<Product> viewAllProducts(Category c);
	public List<Product> viewAllProducts(Supplier s);
	public List<Product> viewAllProducts();
	public void deleteProduct(int pid);
	public Product editProduct(int pid);
	public Product getProduct(int pid);
	public void updateProduct(Product p);
	Product cart(int pid);
}
	
