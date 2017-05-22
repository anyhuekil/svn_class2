package javahomework.a10_parkyunha;

public class Homework_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// HW01
		Person p1 = new Person("Yunha Park");
		p1.inputInfo("Seoul", 27);
		p1.introMyself();
		
		
		// HW02
		Account myAccount = new Account("Park", "Male", 0);
		Account hisAccount = new Account("Torr", "Female", 0);
		
		System.out.println("Name\t\tSave\tWithdraw\tTotal\tDate\t\tContent");
		myAccount.banking("saving", 100, "savings", "2017-01-01");
		myAccount.banking("saving", 100, "savings", "2017-02-01");
		hisAccount.banking("withdraw", 40, "buy hammer", "2017-02-07");
		hisAccount.banking("withdraw", 40, "buy robe", "2017-02-15");
		myAccount.banking("saving", 100, "savings", "2017-03-01");
		
		myAccount.banking("withdraw", 50, "pay bill", "2017-03-10");
		myAccount.banking("withdraw", 50, "pay bill", "2017-04-10");
		hisAccount.banking("saving", 80, "win lottaty", "2017-04-12");
		myAccount.banking("withdraw", 50, "pay bill", "2017-05-10");
		hisAccount.banking("withdraw", 40, "Performance fee", "2017-05-17");
		
	}

}

/*
 * ???뻾 (1?떒怨?)
 * - 怨꾩쥖
 * 	* field: account-name,
 *  * constructor: input -> account-name,
 *  * method
 *  	input(money)
 *  	print : Mr. XXX save 0000
 *  	output(money)
 *  	print : Mr. XXX withdraw 000 currentMoney 000
 * */
class Account {
	private String name;
	private String gender;
	static private int currentMoney;
	
	Account(String name) {
		this.name = name;
	}
	
	Account(String name, String gender, int initCapital) {
		this.name = name;
		this.gender = gender;
		Account.currentMoney += initCapital;
	}
	
	void banking(String type, int money, String content, String date) {
		String title = this.gender.equals("Male") ? "Mr." : "Ms.";
		Account.currentMoney += type.equals("saving") ? money : (-1)*money;
		
		if(type == "saving") {
			System.out.println(title+this.name+"\t\t$"+money+"\t\t\t$"+Account.currentMoney+"\t"+date+"\t"+content);
		} else if(type == "withdraw") {
			System.out.println(title+this.name+"\t\t\t$"+money+"\t\t$"+Account.currentMoney+"\t"+date+"\t"+content);
		}
	}
}

class Person {
	private String name;
	private String location;
	private int age;
	
	Person(String name) {
		this.name = name;
	}
	
	void inputInfo(String location, int age) {
		this.location = location;
		this.age = age;
	}
	
	void introMyself() {
		System.out.println("MY name is " + this.name + ". I'm " 
				+ this.age + " year-old and I live in " + this.location);
	}
}


 
