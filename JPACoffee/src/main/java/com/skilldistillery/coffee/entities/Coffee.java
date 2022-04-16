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
	private Integer espressoAmountOz;

	@Column(name = "milk_amount_oz")
	private Integer milkAmountOz;

	@Column(name = "hot_or_iced")
	private String hotOrIced;

	private double cost;

	@Column(name = "size_in_oz")
	private Integer sizeInOunces;

	private String flavor;

	@Column(name = "milk_option")
	private String milkOption;

	public Coffee() {
		super();
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Coffee [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", size=");
		builder.append(size);
		builder.append(", hotOrIced=");
		builder.append(hotOrIced);

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

	public Integer getEspressoAmountOz() {
		return espressoAmountOz;
	}

	public void setEspressoAmountOz(Integer espressoAmountOz) {
		this.espressoAmountOz = espressoAmountOz;
	}

	public Integer getMilkAmountOz() {
		return milkAmountOz;
	}

	public void setMilkAmountOz(Integer milkAmountOz) {
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

	public Integer getSizeInOunces() {
		return sizeInOunces;
	}

	public void setSizeInOunces(Integer sizeInOunces) {
		this.sizeInOunces = sizeInOunces;
	}

	public String getFlavor() {
		return flavor;
	}

	public void setFlavor(String flavor) {
		this.flavor = flavor;
	}

	public String getMilkOption() {
		return milkOption;
	}

	public void setMilkOption(String milkOption) {
		this.milkOption = milkOption;
	}

}