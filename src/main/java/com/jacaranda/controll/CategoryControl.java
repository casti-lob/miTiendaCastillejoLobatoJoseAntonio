package com.jacaranda.controll;

import java.util.List;

import org.hibernate.query.Query;

import com.jacaranda.Category;
import com.jacaranda.ConnectionDAO;
import com.jacaranda.exception.CategoryException;

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
	public static void getCategoryName(String nameCategory)throws CategoryException {
		Query<Category> query = ConnectionDAO.getSession().createQuery("SELECT c FROM com.jacaranda.Category c WHERE c.name =: nameCategory");
		query.setParameter("nameCategory", nameCategory);
		List results = query.getResultList();
		if(!results.isEmpty()) {
			throw new CategoryException("Ya existe una categoría con ese nombre");
		}
	
	}
	public static void addCategory(Category c) {
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().save(c);
			ConnectionDAO.getSession().getTransaction().commit();
		
		
		}catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
		
		
	}
	public static void deleteCategory(Category c) {
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().delete(c);
			ConnectionDAO.getSession().getTransaction().commit();
		
		
		}catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
	}
	
	public static void modCategory(Category newCategory, int idOldCategory) {
		Category oldCategory = getCatetory(idOldCategory);
		oldCategory.setName(newCategory.getName());
		oldCategory.setDescription(newCategory.getDescription());
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().save(oldCategory);
			ConnectionDAO.getSession().getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
		
	}
}
