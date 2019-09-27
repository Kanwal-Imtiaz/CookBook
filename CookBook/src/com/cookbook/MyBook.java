package com.cookbook;

import java.util.ArrayList;

public class MyBook {

	private String recipe_name;
	private String user_name;
	
	
	public MyBook(){
		
	}
	public MyBook( String recipe_name, String user_name) {
		super();
	
		this.recipe_name = recipe_name;
		this.user_name = user_name;
	}
	
	
	
	public String getRecipe_name() {
		return recipe_name;
	}
	public void setRecipe_name(String recipe_name) {
		this.recipe_name = recipe_name;
	}
	
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	
	public ArrayList<MyBook> getRecipesFromDB(){
		
		//get recipes added in myBook table in db

		MyBook obj1 = new MyBook("Rolls","Kanwal");
		MyBook obj2 = new MyBook("Pasta","Kanwal");
		MyBook obj3 = new MyBook("Pizza","Kanwal");
		
		
		ArrayList<MyBook> recipes = new ArrayList<MyBook>();
		recipes.add(obj1);
		recipes.add(obj2);
		recipes.add(obj3);

		return recipes;
		
	}
	
	public String removefrommybook(){
		//remove recipe from myBook table in db
		return "success";
	}
	
	public String addtomybook(){
		//add recipe from myBook table in db
		return "success";
	}
	
}
