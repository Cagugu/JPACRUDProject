package com.skilldistillery.coffee.data;

import com.skilldistillery.coffee.entities.Coffee;

public interface CoffeeDAO {

	Coffee findById(int coffeeId);
	
}
