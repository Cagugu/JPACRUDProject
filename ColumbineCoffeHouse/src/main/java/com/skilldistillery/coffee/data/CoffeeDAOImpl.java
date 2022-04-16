package com.skilldistillery.coffee.data;

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
	public Coffee findById(int coffeeId) {
		return em.find(Coffee.class, coffeeId); //For example, rn id 1 is for CarMac
	}

}
