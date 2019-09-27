package com.cookbook;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

/* Action class --- Model  */

public class user {

	private int id;
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	private String name;
	private String username;
	private String password;
	private String email;

	public user(){
		
	}
	
public user( String n){

	name=n;
		
	}
	public String execute(){

		if(validate_user())
			return "success";
		else
			return "error";
	}

	public String signup(){
		//add user in db
		
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");// populates the data of the
											// configuration file

		// creating seession factory object
		SessionFactory factory = cfg.buildSessionFactory();

		// creating session object
		Session session = factory.openSession();

		// creating transaction object
		Transaction t = session.beginTransaction();

		user u1 = new user();
		//e1.setId(1000);
		
		u1.setName(name);
		u1.setUsername(username);
		u1.setPassword(password);
		u1.setEmail(email);
		session.persist(u1);// persisting the user object in users table
		
		t.commit();// transaction is committed
		session.close();
		return "success";
	}



	//getter and setter for name
	public String getName(){
		return name;
	}
	public void setName(String n){
		this.name=n;
	}
	//getter and setter for username
	public String getUsername(){
		return username;
	}
	public void setUsername(String n){
		this.username=n;
	}
	
	//getter and setter for password
	public String getPassword(){
		return password;
	}

	public void setPassword(String p){
		this.password=p;
	}
	//getter and setter for email
	public String getEmail(){
		return email;
	}
	public void setEmail(String e){
		this.email=e;
	}

	//validation of user 
	boolean validate_user(){
		Configuration cfg = new Configuration();
		cfg.configure("hibernate.cfg.xml");						// populates the data of the configuration file
		SessionFactory factory = cfg.buildSessionFactory(); 	// creating seession factory object
		Session session = factory.openSession();				// creating session object
		Transaction t = session.beginTransaction();				// creating transaction object
	
	      
		Query q = session.createQuery("FROM com.cookbook.user WHERE Username='" + username + "' and Password='" + password+ "'");
		
		 List records = q.list();
		if(records.size()==0){
			   t.commit();
			   session.close();
			return false;
		}
		else{
			 t.commit();
			 session.close();
			return true;
		}
	}
}
