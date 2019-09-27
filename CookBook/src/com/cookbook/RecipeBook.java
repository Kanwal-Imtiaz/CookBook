package com.cookbook;

import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class RecipeBook {
	
	private String r_name;
	private String recipe;
	private String img_url;
	 public RecipeBook(){
		 r_name=null;
		 recipe=null;
		 img_url=null;
	 }
	
	public RecipeBook(String r_name, String recipe, String img_url) {
		super();
	
		this.r_name = r_name;
		this.recipe = recipe;
		this.img_url = img_url;
	}

	public String execute(){
		return "success";
	}
	
	public String addrecpie(){
		//add recipe in db
		if(validate_user())
			return "success";
			else
			return "error";
	}

	

//getter and setter for name
public String getR_name(){
	return r_name;
}
public void setR_name(String n){
	this.r_name=n;
}
//getter and setter for username
public String getRecipe(){
	return recipe;
}
public void setRecipe(String r){
	this.recipe=r;
}

//getter and setter for password
public String getImgurl(){
	return img_url;
}

public void setImgurl(String u){
	this.img_url=u;
}

boolean validate_user(){
	System.out.println(getR_name());
	if(r_name.equals("Rolls") ){
		return true;
	}
	else return false;
}

public ArrayList<RecipeBook> getRecipesFromDB(){
	//get all recipes from db
	RecipeBook obj1 = new RecipeBook("Rolls", "Vegetables, Chicken", "food2.jpg");
	RecipeBook obj2 = new RecipeBook("Pizza", "Vegetables, Chicken", "food2.jpg");
	RecipeBook obj3 = new RecipeBook("Pasta", "Vegetables, Chicken", "food2.jpg");
	RecipeBook obj4 = new RecipeBook("Sandwitch", "Vegetables, Chicken", "food2.jpg");
	
	ArrayList<RecipeBook> recipes = new ArrayList<RecipeBook>();
	recipes.add(obj1);
	recipes.add(obj2);
	recipes.add(obj3);
	recipes.add(obj4);

	return recipes;
	
}

}
