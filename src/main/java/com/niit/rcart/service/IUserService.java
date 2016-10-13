package com.niit.rcart.service;

import com.niit.rcart.model.User;

public interface IUserService
{
	void addUser(User u);
    User verify(User u);
	public User getUser();
	public Object setUser(Object object);
	
}
