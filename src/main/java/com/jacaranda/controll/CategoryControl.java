package com.jacaranda.controll;

import java.util.List;

import org.hibernate.query.Query;

import com.jacaranda.Category;
import com.jacaranda.ConnectionDAO;

public class CategoryControl {
	
	public static List<Category> showCategory(){
		Query<Category> query = ConnectionDAO.getSession().createQuery("SELECT c FROM com.jacaranda.Category c");
		List<Category> categories = query.getResultList();
		return categories;
	}
	
	public static Category getCatetory(int id) {
		
		Category c =ConnectionDAO.getSession().get(Category.class,id);
		return c;
	}
}
