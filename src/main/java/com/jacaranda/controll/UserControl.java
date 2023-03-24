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
	
}
