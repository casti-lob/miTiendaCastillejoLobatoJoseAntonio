package com.jacaranda;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Objects;
import java.util.Set;

import com.jacaranda.exception.PurchaseException;

public class Purchase {
	private  HashMap<Article, Integer> listPurchase;
	

	public Purchase() {
		super();
		this.listPurchase=new HashMap<Article, Integer>();
	}

	public HashMap<Article, Integer> getListPurchase() {
		return listPurchase;
	}
	//Para obtener una lista de las keys de nuestro hashmap
	public Set<Article> getKeyPurchase() {
		return this.listPurchase.keySet();
	}
	public int getUnit(Article a) {
		return this.listPurchase.get(a);
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
	
	public void addPurchase(Article article, Integer stock)  throws PurchaseException {
			
		 if(this.listPurchase.containsKey(article)) {
				if(this.listPurchase.get(article)+stock > article.getStock()) {
					throw new PurchaseException("No hay stock suficiente");
				}else {
					this.listPurchase.put(article, this.listPurchase.get(article)+stock);
				}
			}else {
				//No hace falta comprobar ya que no podemos poner un stock mayor al existente por la restricción del html
				this.listPurchase.put(article, stock);
			}
	}
	
	
	
	public  void remuveProduct(Article article) {
		if(this.listPurchase.containsKey(article)) {
			this.listPurchase.remove(article);
		}
	}
	
	public int sizePurchase() {
		if(this.listPurchase==null) {
			return 0;
		}else {
			return this.listPurchase.size();
		}
		
	}
	
	
}
