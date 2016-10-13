package com.niit.rcart.DAO;

import com.niit.rcart.model.User;

public interface UserDAO 
{
	public void addUser(User u);
	public void editUser(User u);
	public void deleteUser(User u);
	//public void updateUser(User u);
	public User verify(User u);
	public User getUser();
	public Object setUser(Object object);
}
