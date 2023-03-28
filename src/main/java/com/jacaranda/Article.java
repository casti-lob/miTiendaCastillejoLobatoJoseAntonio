	package com.jacaranda;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;


@Entity
@Table(name = "article")
public class Article {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String title;
	private String sinopsis;
	private double price;
	private int stock;
	
	@ManyToOne
	@JoinColumn(name="idCategory")
	private Category idCategory;
	
	@OneToMany(mappedBy = "idArticle")
	private List<Orders> orders = new ArrayList<Orders>();
	
	public Article() {
		super();
	}

	public Article(String title, String sinopsis, double price, int stock, Category idCategory) {
		super();
		this.title = title;
		this.sinopsis = sinopsis;
		this.price = price;
		this.stock = stock;
		this.idCategory = idCategory;
		this.orders= new ArrayList<Orders>();
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getSinopsis() {
		return sinopsis;
	}

	public void setSinopsis(String sinopsis) {
		this.sinopsis = sinopsis;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Category getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(Category idCategory) {
		this.idCategory = idCategory;
	}

	public int getId() {
		return id;
	}
	

	public List<Orders> getOrders() {
		return orders;
	}
	

	public void setOrders(List<Orders> orders) {
		this.orders = orders;
	}

	@Override
	public int hashCode() {
		return Objects.hash(id, title);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Article other = (Article) obj;
		return id == other.id && Objects.equals(title, other.title);
	}
	
	
}
