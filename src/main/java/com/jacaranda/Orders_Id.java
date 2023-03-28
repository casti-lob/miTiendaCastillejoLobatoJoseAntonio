package com.jacaranda;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Objects;

public class Orders_Id implements Serializable{
	private int idArticle;
	private String userName;
	private LocalDateTime dateOfPurchase;
	
	public Orders_Id(int idArticle, String userName, LocalDateTime dateOfPurchase) {
		super();
		this.idArticle = idArticle;
		this.userName = userName;
		this.dateOfPurchase = dateOfPurchase;
	}
	
	public Orders_Id() {
		super();
	}

	public int getIdArticle() {
		return idArticle;
	}

	public void setIdArticle(int idArticle) {
		this.idArticle = idArticle;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public LocalDateTime getDateOfPurchase() {
		return dateOfPurchase;
	}

	public void setDateOfPurchase(LocalDateTime dateOfPurchase) {
		this.dateOfPurchase = dateOfPurchase;
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
		Orders_Id other = (Orders_Id) obj;
		return Objects.equals(dateOfPurchase, other.dateOfPurchase) && idArticle == other.idArticle
				&& Objects.equals(userName, other.userName);
	}
	
	
}
