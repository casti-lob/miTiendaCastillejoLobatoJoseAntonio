package com.jacaranda.controll;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.query.Query;

import com.jacaranda.Article;
import com.jacaranda.ConnectionDAO;

public class ArticleControl {
	
	public static List<Article> showArticle(){
		Query<Article> query = ConnectionDAO.getSession().createQuery("SELECT a FROM com.jacaranda.Article a");
		List<Article> element = query.getResultList();
		return element;
	}
}

