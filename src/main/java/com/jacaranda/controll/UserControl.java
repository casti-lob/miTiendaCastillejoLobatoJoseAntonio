package com.jacaranda.controll;

import com.jacaranda.ConnectionDAO;
import com.jacaranda.UserDb;

public class UserControl {
	
	public static UserDb getUser(String userName) {
		UserDb u = ConnectionDAO.getSession().get(UserDb.class, userName);
		return u;
	}
	
	public static boolean checkUser(String userName, String password) {
		UserDb user =getUser(userName);
		boolean check= false;
		if(user!=null && user.getPassword().equals(password)) {
			check= true;
		}
		return check;
	}
	
	public static void addUser(UserDb user) {
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().save(user);
			ConnectionDAO.getSession().getTransaction().commit();

		}catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
	}
	
}
