package com.skilldistillery.coffee.data;

import java.util.List;

import com.skilldistillery.coffee.entities.Coffee;

public interface CoffeeDAO {

	Coffee findById(int id);
	List<Coffee> showFullMenu();
	List<Coffee> findByNameContaining(String keyword);
	Coffee createYourOwn(Coffee coffee);
	Coffee updateCoffee(int id, Coffee coffee);
	boolean deleteCoffee(int id);
}
