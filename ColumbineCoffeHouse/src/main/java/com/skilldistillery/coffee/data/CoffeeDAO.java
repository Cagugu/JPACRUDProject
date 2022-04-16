package com.skilldistillery.coffee.data;

import java.util.List;

import com.skilldistillery.coffee.entities.Coffee;

public interface CoffeeDAO {

	Coffee findById(int coffeeId);
	List<Coffee> showFullMenu();
	List<Coffee> findByNameContaining(String keyword);
}
