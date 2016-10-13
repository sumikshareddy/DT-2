package com.niit.rcart.DAO;

import com.niit.rcart.model.Product;
import com.niit.rcart.model.User;

public interface ProfileDAO {

	public void deleteUser(int id);
	public Product editUser(int pid);
	public void updateUser(User u);
}
