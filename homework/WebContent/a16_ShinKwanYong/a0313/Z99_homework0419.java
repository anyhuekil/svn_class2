package javaexp.a06_object;
/*
 * 은행에 가서
 * field명 : 계정명, (입금액, 출금액), 총잔액, (날짜)
 * Account(계좌계정)
 * 생성자1 : 계정명 입력
 * 생성자2 : 계정명, 초기입금액
 * save(입금액,날짜)
 * 계산처리
 * - return
 * 
 * 자기소개
 * field : 이름, 사는곳, 나이
 * 생성자(이름입력)
 * inputData(사는곳,나이)
 * introMyself():출력처리
 * 내이름은 @@이고, 나이는 @@, 사는곳은 @@입니다
 * 
 * 
 * */

class Account{
	String name03;
	String text;
	int input;
	int sum02;
	int total;
	String date01;
	
	Account(String name03){
		this.name03=name03;
	}
	

	int Save(String date01,String text, int input){
		this.date01=date01;
		this.text=text;
		this.input=input;
		total+= input;
		return total;
	}
	void print(){
		System.out.println(date01+"\t"+name03+"님"+"\t"+text+"\t"+input+
				"\t총액: "+total);		
	}
	
}

class Myself{
	String name01;
	String address;
	int age;
	
	
	Myself(String name01){
		this.name01=name01;
	}

	void InputData(String address, int age){
		this.address=address;
		this.age=age;
	}
	
	void introMyself(){
		System.out.println("내 이름은 "+name01+"이고 나이는 "
	+age+", 사는곳은 "+address+"입니다");
	}
	
	
}

class Bear{
	String name;
	int bearApple;
	static int totApple;
	
	Bear(String name){
		this.name=name;
	}

	void eatApple(int bearApple){
		totApple-=bearApple;
		System.out.println(name+"가 사과를 먹는다");
		System.out.println(bearApple+"개를 먹어서");
		System.out.println("총 남은 사과는"+totApple);
	}
	
	
	
	
}









public class Z99_homework0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account p1= new Account("부자");
		p1.Save("0419","꽁돈",50000000);
		p1.print();
		System.out.println("-----------------");
		
		
		Myself s = new Myself("신과뇽");
		s.InputData("서울 강동",31);
		s.introMyself();
		System.out.println("-----------------");
		
		
		Bear b1 = new Bear("곰탱이");
		Bear.totApple+=10;
		b1.eatApple(1);
	
		
		
		

	}

}
