package javaexp.a07_inheritance;

/*
Zerggling : 파충류
     
Larba(초기) : 상위클래스
	attack() 정의
상속받은 하위 객체..
   Dron  attack() 재정의 다른 공격방법
   Zerggling  attack() 재정의 다른 공격방법
   Hydrisk   attack() 재정의 다른 공격방법
상위..
Larba l01 = new Dron();  l01.attack();
Larba l02 = new Zerg();  l02.attack();
Larba l03 = new Hydrisk();   l03.attack();  
 * */
class Larba{
	String unitKind;
	Larba(){
		unitKind="라바";
	}
	public Larba(String unitKind) {
		this.unitKind = unitKind;
	}	
	public void attack(){
		System.out.println(unitKind+"가 공격을 하다!!");
	}
}
class Dron extends Larba{
	Dron(){
		super("드론");
	}
	// attack()을 재정의
	public void attack(){
		System.out.println(unitKind+"가 공격력 5로 공격합니다.");
	}
}
class Zerggling extends Larba{
	Zerggling(){
		super("저그링");
	}
	// attack()을 재정의
	public void attack(){
		System.out.println(unitKind
				+"가 공격력 5로 빠른 접근 공격합니다.");
	}
}
class Hydrarisk extends Larba{
	Hydrarisk(){
		super("히드라");
	}
	// attack()을 재정의
	public void attack(){
		System.out.println(unitKind
				+"가 공격력 10로 미사일 공격합니다.");
	}
}
public class A07_star_world_polymor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Larba l01 = new Larba();
		l01.attack();
		// 다형성이 일어나 부모타입에 모든 자식 객체가 대입가능
		Larba l02 = new Dron();
		Larba l03 = new Zerggling();
		Larba l04 = new Hydrarisk();
		l02.attack();
		l03.attack();
		l04.attack();
	}

}
