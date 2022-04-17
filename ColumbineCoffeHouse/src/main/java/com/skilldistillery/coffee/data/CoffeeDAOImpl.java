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
		String query = "SELECT c from Coffee c WHERE name LIKE :keyword";
		List<Coffee> keywordMatch = em.createQuery(query, Coffee.class).setParameter("keyword", "%" +keyword+ "%").getResultList();	
		return keywordMatch;
	}


	@Override
	public Coffee createYourOwn(Coffee coffee) {
		em.persist(coffee);
		return coffee;
	}


	@Override
	public Coffee updateCoffee(int id, Coffee coffee) {
		Coffee updated = em.find(Coffee.class, id);
		updated.setName(coffee.getName());
		updated.setSize(coffee.getSize());
		updated.setHotOrIced(coffee.getHotOrIced());
		updated.setFlavor(coffee.getFlavor());
		updated.setMilkOption(coffee.getMilkOption());
		em.flush();
		return updated;
	}


	@Override
	public boolean deleteCoffee(int id) {
		
		//need resolution for allowing deletion of primary keys
		boolean isDeleted = false;
		Coffee coffee = em.find(Coffee.class, id);
		if (coffee != null) {
			em.remove(coffee);
		}
		em.flush();
		isDeleted = !em.contains(coffee);
		
		return isDeleted;
	}
	
	

}
