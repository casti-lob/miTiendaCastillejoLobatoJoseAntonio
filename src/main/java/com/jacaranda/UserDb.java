package com.jacaranda;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.apache.commons.codec.digest.DigestUtils;

import com.jacaranda.exception.UserException;

@Entity
@Table(name = "userDb")
public class UserDb {
	@Id
	private String userName;
	private String password;
	private String name;
	private String surname;
	private Date birthdayDate;
	private char gender;
	private boolean admin;
	@OneToMany(mappedBy = "userName")
private List<Orders> orders = new ArrayList<Orders>();
	
	public UserDb(String userName, String password, String name, String surname, Date birthdayDate, char gender,
			boolean admin) {
		super();
		this.userName = userName;
		this.password = DigestUtils.md5Hex(password);
		this.name = name;
		this.surname = surname;
		this.birthdayDate = birthdayDate;
		try {
			setGender(this.gender);
		} catch (UserException e) {
			System.out.println(e.getMessage());
			
		}
		this.admin = admin;
	}

	public UserDb() {
		super();
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public Date getBirthdayDate() {
		return birthdayDate;
	}

	public void setBirthdayDate(Date birthdayDate) {
		this.birthdayDate = birthdayDate;
	}

	public char getGender() {
		return gender;
	}

	public void setGender(char gender)throws UserException {
		if(gender!='M'||gender!='F') {
			throw new UserException("Solo se admite M o F en el campo género");
		}
		this.gender = gender;
	}

	public boolean isAdmin() {
		return admin;
	}

	public void setAdmin(boolean admin) {
		this.admin = admin;
	}
	
	
	public List<Orders> getOrders() {
		return orders;
	}
	
	@Override
	public int hashCode() {
		return Objects.hash(userName);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		UserDb other = (UserDb) obj;
		return Objects.equals(userName, other.userName);
	}
	
	
}
