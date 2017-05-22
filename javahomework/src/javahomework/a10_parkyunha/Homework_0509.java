package javahomework.a10_parkyunha;

import java.util.ArrayList;
import java.util.Iterator;

public class Homework_0509 {

	public static void main(String[] args) {
		ArrayList<Fruit> fruitSeller = new ArrayList<Fruit>();
		ArrayList<Fruit> fruitBuyer = new ArrayList<Fruit>();
		
		// 1. List of Fruits for sale
		fruitSeller.add(new Fruit("Apple"));
		fruitSeller.add(new Fruit("Banana"));
		fruitSeller.add(new Fruit("Strawberry"));
		fruitSeller.add(new Fruit("Orange"));
		fruitSeller.add(new Fruit("Water Mellon"));
		
		printFruitList("Problem 1", fruitSeller, fruitBuyer);
		
		// 2. Buyer get Apple, Strawberry
		for(Iterator<Fruit> iterator = fruitSeller.iterator(); iterator.hasNext(); ) {
			Fruit fr = iterator.next();
			switch(fr.getName()) {
			case "Apple":
			case "Strawberry":
				fruitBuyer.add(fr);
				iterator.remove();
				break;
			}
		}
		
		printFruitList("Problem 2", fruitSeller, fruitBuyer);
		
		// 3. Seller are changing Banana to Apple
		fruitSeller.set(0, new Fruit("Apple"));
		
		printFruitList("Problem 3", fruitSeller, fruitBuyer);
		
		// 4. Buyer ate Apple,  Strawberry
		for(Iterator<Fruit> iterator = fruitBuyer.iterator(); iterator.hasNext(); ) {
			Fruit fr = iterator.next();
			switch(fr.getName()) {
			case "Apple":
			case "Strawberry":
				iterator.remove();
				break;
			}
		}
		
		printFruitList("Problem 4", fruitSeller, fruitBuyer);
		
		// 5. Get a bonus Fruit from Seller if Buyer has no Fruit
		if(fruitBuyer.size() == 0) {
			fruitBuyer.add(fruitSeller.get(0));
			fruitSeller.remove(0);
		}
		
		printFruitList("Problem 5", fruitSeller, fruitBuyer);
		
	}
	
	
	public static void printFruitList(String problem
			, ArrayList<Fruit> fruitSeller
			, ArrayList<Fruit> fruitBuyer) {
		String sellerList = "";
		String buyerList = "";
		for(Fruit fruit : fruitSeller) {
			sellerList += fruit.getName() + ", ";
		}
		
		for(Fruit fruit : fruitBuyer) {
			buyerList += fruit.getName() + ", ";
		}
		
		System.out.println(problem+"\n[Seller]"+sellerList+"\n"+"[Buyer]"+buyerList+"\n");
	}
	

}

class Fruit {
	private String name;

	public Fruit(String name) {
		super();
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
