package com.skilldistillery.coffee.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Coffee {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String name;

	private String size;

	@Column(name = "espresso_amount_oz")
	private int espressoAmountOz;

	@Column(name = "milk_amount_oz")
	private int milkAmountOz;

	@Column(name = "hot_or_iced")
	private String hotOrIced;

	private double cost;

	public Coffee() {
		super();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Coffee info: Menu Item: ");
		builder.append(id);
		builder.append(", ");
		builder.append(name);
		builder.append(", Size: ");
		builder.append(size);
		builder.append(", Total: ");
		builder.append(cost);
		builder.append(". ");
		return builder.toString();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public int getEspressoAmountOz() {
		return espressoAmountOz;
	}

	public void setEspressoAmountOz(int espressoAmountOz) {
		this.espressoAmountOz = espressoAmountOz;
	}

	public int getMilkAmountOz() {
		return milkAmountOz;
	}

	public void setMilkAmountOz(int milkAmountOz) {
		this.milkAmountOz = milkAmountOz;
	}

	public String getHotOrIced() {
		return hotOrIced;
	}

	public void setHotOrIced(String hotOrIced) {
		this.hotOrIced = hotOrIced;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

}
