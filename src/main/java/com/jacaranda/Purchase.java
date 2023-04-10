package com.jacaranda;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Objects;

import com.jacaranda.exception.PurchaseException;

public class Purchase {
	private HashMap<Article, Integer> listPurchase;
	
	
	public Purchase(HashMap<Article, Integer> listPurchase) {
		super();
		this.listPurchase = new HashMap<>();
		
	}

	public Purchase() {
		super();
	}

	public HashMap<Article, Integer> getListPurchase() {
		return listPurchase;
	}

	public void setListPurchase(HashMap<Article, Integer> listPurchase) {
		this.listPurchase = listPurchase;
	}

	@Override
	public int hashCode() {
		return Objects.hash(listPurchase);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Purchase other = (Purchase) obj;
		return Objects.equals(listPurchase, other.listPurchase);
	}

	public void clearPurchase () {
		this.listPurchase.clear();
	}
	
	public void addPurchase(Article article, Integer stock) throws PurchaseException{
		if(this.listPurchase.containsKey(article)) {
			if(this.listPurchase.get(article)>= article.getStock()) {
				throw new PurchaseException("No hay stock suficiente");
			}else {
				this.listPurchase.put(article, this.listPurchase.get(article)+1);
			}
		}else {
			this.listPurchase.put(article, 1);
		}
	}
	
	
	
}
