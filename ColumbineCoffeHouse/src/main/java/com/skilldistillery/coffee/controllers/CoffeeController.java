package com.skilldistillery.coffee.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.coffee.data.CoffeeDAO;
import com.skilldistillery.coffee.entities.Coffee;

@Controller
public class CoffeeController {

	@Autowired
	private CoffeeDAO dao;
	
	@RequestMapping(path= {"/", "home.do"})
	public String home(Model model) {
		List<Coffee> fullMenu = dao.showFullMenu();
		model.addAttribute("fullMenu", fullMenu);
		return "home";
	}
	
	@RequestMapping(path= "getCoffee.do")
	public String coffeeFromIdSearch(int id, Model model) {
		Coffee coffee = dao.findById(id);
		model.addAttribute("coffee", coffee);
		return "coffee/coffeeview";
	}
	
}
