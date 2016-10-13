package com.niit.rcart.service;

import java.util.List;

import com.niit.rcart.model.Category;

public interface ICategoryService {
	void addCategory(Category c);
	public List<Category> viewAllCategory();
	public void deleteCategory(int cid);
	public Category editCategory(int cid);
	public void updateCategory(Category c);
	public Category viewCategory(int cid);
}
