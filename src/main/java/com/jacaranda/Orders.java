package com.jacaranda;

import java.time.LocalDateTime;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
@IdClass(Orders_Id.class)
public class Orders {
	@Id
	private LocalDateTime dateOfPurchase;
	private int amount;
	private double price;
	
	@ManyToOne
	@JoinColumn(name = "userName")
	@Id
	private UserDb userName;
	
	@ManyToOne
	@JoinColumn(name = "idArticle")
	@Id
	private Article idArticle;

	public Orders(LocalDateTime dateOfPurchase, int amount, double price, UserDb userName, Article idArticle) {
		super();
		this.dateOfPurchase = dateOfPurchase;
		this.amount = amount;
		this.price = price;
		this.userName = userName;
		this.idArticle = idArticle;
	}

	public Orders() {
		super();
	}

	public LocalDateTime getDateOfPurchase() {
		return dateOfPurchase;
	}

	public void setDateOfPurchase(LocalDateTime dateOfPurchase) {
		this.dateOfPurchase = dateOfPurchase;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public UserDb getUserName() {
		return userName;
	}

	public Article getIdArticle() {
		return idArticle;
	}

	@Override
	public int hashCode() {
		return Objects.hash(dateOfPurchase, idArticle, userName);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Orders other = (Orders) obj;
		return Objects.equals(dateOfPurchase, other.dateOfPurchase) && idArticle == other.idArticle
				&& Objects.equals(userName, other.userName);
	}
	
	
}
