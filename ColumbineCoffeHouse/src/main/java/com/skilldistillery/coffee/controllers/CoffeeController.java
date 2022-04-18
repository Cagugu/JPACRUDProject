package com.skilldistillery.coffee.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

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
	@RequestMapping(path= "findKeywordCoffee.do")
	public String coffeeFromKeywordSearch(String keyword, Model model) {
		List<Coffee> keywordMatch = dao.findByNameContaining(keyword);
		model.addAttribute("keywordMatch", keywordMatch);
		return "findbykeyword";
	}
	
	@RequestMapping(path="create.do", method=RequestMethod.GET)
	public String create() {
		return "createcoffee";
	}
	
	
	@RequestMapping(path="createcoffee.do",  method=RequestMethod.POST)
	public String createCoffee(Coffee coffee, Model model) {
		Coffee newBrew = dao.createYourOwn(coffee);
		model.addAttribute("coffee", newBrew);
		return "coffee/coffeeview";
	}
	
	@RequestMapping(path="update.do", method=RequestMethod.GET)
	public String update(Model model, int id) {
		Coffee coffee = dao.findById(id);
		model.addAttribute("coffee", coffee);
		System.out.println("In update.do");
		return "updatecoffee";
	}
	
	@RequestMapping(path="updateCoffee.do", method=RequestMethod.POST)
	public String updateCoffee(int id, Coffee coffee, Model model) {
		System.out.println("In updateCoffee.do");
		Coffee newBrew = dao.updateCoffee(id, coffee);
		model.addAttribute("coffee", newBrew);
		return "coffee/updated";
	}
	

	@RequestMapping(path="deleteCoffee.do", method=RequestMethod.POST)
	public String deleteCoffee(int id) {
		Boolean isDeleted = dao.deleteCoffee(id);
		return "coffee/deleted";
	}
	
	@RequestMapping(path = { "search.do" }, method = RequestMethod.GET)
	public ModelAndView findById(String id) {
		ModelAndView mv = new ModelAndView();
		String keyword = id;

		try {
			int newId = Integer.parseInt(id);
			Coffee coffee = dao.findById(newId);
			mv.addObject("coffee", coffee);
			mv.setViewName("coffee/coffeeview");

		} catch (Exception e) {

			List<Coffee> keywordMatch = dao.findByNameContaining(keyword);
			mv.addObject("keywordMatch", keywordMatch);
			mv.setViewName("findbykeyword");

		}

		return mv;
	}
	
}
