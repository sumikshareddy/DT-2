package com.niit.rcart.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.rcart.model.Category;
import com.niit.rcart.DAO.CategoryDAO;

@Service("CategoryService")
public class CategoryService implements ICategoryService{
	
	@Autowired(required=true)
	private CategoryDAO cd;
	
	public void addCategory(Category c) {
		cd.addCategory(c);
	}
	
	public List<Category> viewAllCategory() {
		return cd.viewAllCategory();
	}
	public void deleteCategory(int cid){
		cd.deleteCategory(cid);
	}
	public void updateCategory(Category c){
		 cd.updateCategory(c);
	}
	
	public Category editCategory(int cid){
		return cd.editCategory(cid);
	}

	public Category viewCategory(int cid) {
		
		return cd.viewCategory(cid);
	}

	
	
}
