package javaexp.a06_object;

// Person이 같은 package안에 선언되어 있기에.
class Person77{
	int money;
	// static멤버는 static type 필드명; 선언
	static int comm_money;
	String name;
	Person77(String name){
		this.name=name;
	}
	void currentMoney(){
		System.out.println(name+"님의 자산:"+money);
		System.out.println("공용 자산:"+comm_money);
	}
	
}

public class A11_StaticMember {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Person77 p1 = new Person77("홍길동");
		Person77 p2 = new Person77("신길동");
		Person77 p3 = new Person77("김길동");
		p1.money+=1000;
		p1.money+=1000;
		// comm_money는 static이기에 참조변수로
		// 쓰이는 것이 의미가 없기에
		// 클래명.static멤버로 활용이 된다.
		Person77.comm_money+=1000; 
		p1.comm_money+=1000;		
		p2.money+=1000;
		p2.money+=1000;
		p2.comm_money+=1000;
		p2.comm_money+=1000;		
		p3.money+=1000;
		p3.money+=1000;
		p3.comm_money+=1000;
		p3.comm_money+=1000;
		// static 변수는 객체 생성상관없이 독립적으로
		// 활용되는 정적 멤버이다.
		p1.currentMoney();
		p2.currentMoney();
		p3.currentMoney();
		
	}

}
