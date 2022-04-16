package com.skilldistillery.coffee.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class CoffeeTest {
private static EntityManagerFactory emf;
private EntityManager em;
private Coffee coffee;



	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPACoffee");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em= emf.createEntityManager();
		coffee= em.find(Coffee.class, 1);
		
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		coffee=null;
	}

	@Test
	@DisplayName("Testing coffee entity mapping")
	void test1() {
		assertNotNull(coffee);
		assertEquals("Caramel Macchiato", coffee.getName());
	}


	
	
}
