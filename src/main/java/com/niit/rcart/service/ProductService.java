package com.niit.rcart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.rcart.model.Category;
import com.niit.rcart.model.Product;
import com.niit.rcart.model.Supplier;
import com.niit.rcart.DAO.ProductDAO;

@Service("ProductService")
public class ProductService implements IProductService{
	
	@Autowired(required=true)
	private ProductDAO pd;
	
	public void addProduct(Product p) 
	{
		pd.addProduct(p);
	}
	
	public List<Product> viewAllProducts(Category c)
	{
		return pd.viewAllProducts(c);
	}
	
	public List<Product> viewAllProducts()
	{
		return pd.viewAllProducts();
	}
	public void deleteProduct(int pid)
	{
		pd.deleteProduct(pid);
	}
	public void updateProduct(Product p)
	{
		 pd.updateProduct(p);
	}
	public Product editProduct(int pid)
	{
		return pd.editProduct(pid);
	}
	public Product cart(int pid)
	{
		return pd.cart(pid);
	}

	public List<Product> viewAllProduct(Supplier s) {
		
		return pd.viewAllProducts(s);
	}
}
