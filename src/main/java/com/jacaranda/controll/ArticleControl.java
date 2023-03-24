package com.jacaranda.controll;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.hibernate.query.Query;

import com.jacaranda.Article;
import com.jacaranda.ConnectionDAO;
import com.jacaranda.exception.ArticleException;

public class ArticleControl {
	
	public static List<Article> showArticle(){
		Query<Article> query = ConnectionDAO.getSession().createQuery("SELECT a FROM com.jacaranda.Article a");
		List<Article> element = query.getResultList();
		return element;
	}
	
	public static void getArticleName(String nameTitle)throws ArticleException {
		Query<Article> query = ConnectionDAO.getSession().createQuery("SELECT a FROM com.jacaranda.Article a WHERE a.title =: nameTitle");
		query.setParameter("nameTitle", nameTitle);
		List results = query.getResultList();
		if(!results.isEmpty()) {
			throw new ArticleException("Ya existe una película con ese título");
		}
	
	}
	
	public static void addArticle(Article article)  {
		try {
				ConnectionDAO.getSession().getTransaction().begin();
				ConnectionDAO.getSession().save(article);
				ConnectionDAO.getSession().getTransaction().commit();
			
			
		}catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
	}
	
	public static void deleteArticle(Article a) {
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().delete(a);
			ConnectionDAO.getSession().getTransaction().commit();
		}catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
	}
	
	public static Article getArticle(int id) {
		Article a = ConnectionDAO.getSession().get(Article.class, id);
		return a;
	}
	
	public static void modArticle(Article newArticle, int idOldArticle) {
		Article oldArticle= getArticle(idOldArticle);
		oldArticle.setTitle(newArticle.getTitle());
		oldArticle.setTitle(newArticle.getTitle());
		oldArticle.setSinopsis(newArticle.getSinopsis());
		oldArticle.setPrice(newArticle.getPrice());
		oldArticle.setIdCategory(newArticle.getIdCategory());
		oldArticle.setStock(newArticle.getStock());
		try {
			ConnectionDAO.getSession().getTransaction().begin();
			ConnectionDAO.getSession().save(oldArticle);
			ConnectionDAO.getSession().getTransaction().commit();
		} catch (Exception e) {
			System.out.println(e.getMessage());
			ConnectionDAO.getSession().getTransaction().rollback();
		}
	}
}

