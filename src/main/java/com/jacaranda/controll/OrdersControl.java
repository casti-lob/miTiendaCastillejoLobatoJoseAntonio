package com.jacaranda.controll;

import java.util.List;

import org.hibernate.query.Query;

import com.jacaranda.ConnectionDAO;
import com.jacaranda.Orders;

public class OrdersControl {
	
	public static List<Orders> showOrders(String user){
		
		Query<Orders> query = ConnectionDAO.getSession().createQuery("SELECT a FROM com.jacaranda.Orders a");
	
		List<Orders> orders = query.getResultList();
		return orders;
	}
	
public static List<Orders> showOrdersDesc(String user){
		
		Query<Orders> query = ConnectionDAO.getSession().createQuery("SELECT a FROM com.jacaranda.Orders a ORDER BY a.dateOfPurchase  DESC");
	
		List<Orders> orders = query.getResultList();
		return orders;
	}
	
public static List<Orders> showOrdersAsc(String user){
	
	Query<Orders> query = ConnectionDAO.getSession().createQuery("SELECT a FROM com.jacaranda.Orders a ORDER BY a.dateOfPurchase  ASC");

	List<Orders> orders = query.getResultList();
	return orders;
}
	public static void addOrder(Orders order) {
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().save(order);
			ConnectionDAO.getSession().getTransaction().commit();
		}catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
		
	}
	

}
