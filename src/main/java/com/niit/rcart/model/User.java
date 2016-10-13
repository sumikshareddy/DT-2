package com.niit.rcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.codehaus.jackson.annotate.JsonIgnore;
import org.hibernate.validator.constraints.Email;
import org.springframework.stereotype.Component;

@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Integer uid;
	
	@Column
	private Integer role; 
	
	@NotNull
	@Size(min = 3, max = 14, message="firstname must have atleat 3 letter")
	@Column
	private String firstname;
	
	@Column
	@NotNull
	@Size(min = 3, max = 14, message="lastname must have atleat 3 letter")
	private String lastname;
	
	@Column
	@NotNull
	@Size(min = 3, max = 14, message="pwd must have atleat 3 letter")
	private String pwd;
	
	@Column
	@NotNull
	@Size(min = 3, max = 50, message="Mail Id can not be Empty")
	@Email
	private String mail;
	
	/*@Column
	@NotNull
	@Size(min = 3, max = 14, message="address must have atleast 6 letter")
	private String address;*/
	
	@Column
	//@Pattern(regexp="[0-9]{10}",message="enter mobile No")
	private String ph;

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public Integer getRole() {
		return role;
	}

	public void setRole(Integer role) {
		this.role = role;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	/*public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}*/

	public String getPh() {
		return ph;
	}

	public void setPh(String ph) {
		this.ph = ph;
	}
	
	

}
