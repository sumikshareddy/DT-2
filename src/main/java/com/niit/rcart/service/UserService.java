package com.niit.rcart.service;

import com.niit.rcart.model.User;
import com.niit.rcart.DAO.UserDAO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("UserService")
public class UserService implements IUserService {


	@Autowired(required=true)
	private UserDAO cd;
	
	public void addUser(User u)
	{
		cd.addUser(u);
	}
	public User verify(User u)
	{
		return cd.verify(u);
	}
	public User getUser()
	{
		return cd.getUser();
	}
	public Object setUser(Object object) {
		// TODO Auto-generated method stub
		return null;
	}
	
}
