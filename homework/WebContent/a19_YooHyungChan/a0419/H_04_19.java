package javaexp.a06_object;



// 은행 1단계
class Account {
	String name;
	int account;
	int inputMoney;
	int outputMoney;
	int sum;
	static int tot = 10000000; //권장하지 않는 방법..
	
	Account(String name, int account){
		this.name = name;
		this.account = account;
	}

	int input(int inputMoney){
		this.inputMoney = inputMoney;
		tot += inputMoney;
		return tot;
	}
	
	int output(int outputMoney){
		this.outputMoney = outputMoney;
		tot -= outputMoney;
		return tot;
	}
	
	void currentMoney(){
		System.out.println(name+"님  "+inputMoney+"원 입금" );		
		System.out.println(name+"님  "+outputMoney+"원 출금" );		
		System.out.println(name+"님 계좌번호 : "+account+"  잔액 : "+tot+"원");		
	}
}

//자기소개 1단계
class Introduce{
	String name;
	String address;
	int age;
	String inf;
	
	Introduce(String name){
		this.name = name;
	}
	
	void inputData (String address, int age){
		this.address = address;
		this.age = age;
	}
	
	void introMyself(){
		System.out.println("내이름은 "+name+"이고, 나이는 "+age+"이며, 사는 곳은 "+address+"입니다.");
	}
}

class AccountVer2{
	int accountMum;
	String accountName; 
	String show= "";
	static int tot ;
	
	AccountVer2(String accountName,int accountMum, int tot){
		this.accountName = accountName;
		this.accountMum = accountMum;
		AccountVer2.tot = tot;
		System.out.println("예금주 : "+accountName+"\n계좌번호 :"+accountMum);
	}
	
	int save(int inputMoney, String inputWhy, String inputDate){
		tot += inputMoney;
		show += "+"+inputMoney+"\t\t"+inputWhy+"\t"+inputDate+"\n";
		return tot;
	}
	
	int withdraw(int outputMoney, String outputWhy, String outputDate){
		tot -= outputMoney;
		show += "-"+outputMoney+"\t\t"+outputWhy+"\t"+outputDate+"\n";
		return tot;
	}
	
	void print(){
		System.out.println(show);
		System.out.println("잔액 : "+tot);
		
	}
}

public class H_04_19 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		// 은행 1단계
		Account a1 = new Account("유형찬", 11099999);
		a1.input(50000);
		a1.output(90000);
		a1.currentMoney();
		
		// 자기소개 1단계
		Introduce i1 = new Introduce("유형찬");
		i1.inputData("분당", 26);
		i1.introMyself();
		
		// 은행 2단계
		
		AccountVer2 a2 = new AccountVer2("유형찬",123456, 999999999);
		a2.save(100000,"용돈","17/04/19");
		a2.withdraw(20000, "밥", "17/04/19");
		a2.print();
		
	}
}
