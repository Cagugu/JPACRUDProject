package com.skilldistillery.coffee.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.coffee.entities.Coffee;


@Service
@Transactional
public class CoffeeDAOImpl implements CoffeeDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Coffee findById(int id) {
		return em.find(Coffee.class, id); //For example, rn id 1 is for CarMac
	}

	
	//Mehtod checked, functions as expected
	@Override
	public List<Coffee> showFullMenu() {
	String query = "SELECT c from Coffee c";
	List<Coffee> fullMenu = em.createQuery(query, Coffee.class).getResultList();
	
		return fullMenu;
	}

	@Override
	public List<Coffee> findByNameContaining(String keyword) {
		String query = "SELECT c from Coffee c WHERE c.name LIKE :name";
		List<Coffee> keywordMatch = em.createQuery(query, Coffee.class).setParameter("name", "%" +keyword+ "%").getResultList();	
		return keywordMatch;
	}
	
	

}
