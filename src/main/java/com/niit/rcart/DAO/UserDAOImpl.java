package com.niit.rcart.DAO;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import com.niit.rcart.DAO.UserDAO;
import com.niit.rcart.model.User;
import com.niit.rcart.model.UserRole;

@Repository("UserDAO")
public class UserDAOImpl implements UserDAO 
{
	@Autowired
	private SessionFactory sf;

	 private User user;
	
	@Transactional(propagation = Propagation.SUPPORTS)
	public void addUser(User u)
	{
		Session s = sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		System.out.println("new user");
		s.saveOrUpdate(u);
		UserRole r=new UserRole();
		System.out.println("userid");
		r.setRid(u.getUid());
		System.out.println("roleuserid");
		r.setAuthority("ROLE_USER");
		s.saveOrUpdate(r);
		t.commit();
		/*Session s1 = sf.openSession();
		Transaction t1 = s1.beginTransaction();*/
		//t.commit();
		//
		//t1.commit();
	}
	@Transactional(propagation = Propagation.SUPPORTS)
	public User verify(User u)
	{
		Session s = sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		Criteria c=s.createCriteria(User.class);
		System.out.println(u.getMail());
		System.out.println(u.getPwd());
		c.add(Restrictions.eq("mail",u.getMail()));
		c.add(Restrictions.eq("pwd",u.getPwd()));
		user=(User)c.uniqueResult();
		System.out.println("Login User: "+user.getFirstname());
		System.out.print(getUser());
		t.commit();
		return user;
	}

	public User getUser()
	{
		System.out.println("rate");
		return user;
	}
	public User setUser()
	{
		System.out.println("rate2");
		return null;
	}
	
	@Transactional(propagation = Propagation.SUPPORTS)
	public User editUser(int uid)
	{
		Session s = sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		User u=(User)s.get(User.class,uid);
		System.out.println(u.getUid());
		t.commit();
		return user;
	}


	public Object setUser(Object object)
	{
		return null;
	}

	@Transactional(propagation=Propagation.SUPPORTS)
	public void deleteUser(int uid) {
		Session s = sf.getCurrentSession();
		Transaction t = s.beginTransaction();
		User u1=(User) s.load(User.class, uid);
        s.delete(u1);
		t.commit();
	}

	public void editUser(User u) {
		// TODO Auto-generated method stub
		
	}

	public void deleteUser(User u) {
		// TODO Auto-generated method stub
		
	}
	
	

}