package javahomework.a20_YiSoyoung.a0426;
/* 확인예제
 * 1단계 - Audio 클래스 구현 main()에서 호출
 * 2단계(숙제)
 		- AttackWay 인터페이스 - 추상메소드 attack()
 		- RocketAttack클래스 ; AttackWay를 구현(상속과는 구별해서 많은 책이 표현합니다)한 실제 클래스 
				메소드 : attack() 로켓 공격하다
		- Robot 클래스 ; 
				필드 : attackWay
				메서드 : showAttack(){attack();}
 * */
interface AttackWay{
	public void attack();
}
class RocketAttack implements AttackWay{
	@Override
	public void attack() {
		System.out.println("로켓 공격하다");	
	}
}
class Robot{
	private RocketAttack rocketAttack;
	public Robot(){	
		rocketAttack = new RocketAttack();	
	}
	public void showAttack(){
		System.out.print("로봇이 ");
		rocketAttack.attack();
	}
	public void setRocketAttack(RocketAttack rocketAttack) {
		this.rocketAttack = rocketAttack;
	}
}
public class A14_interfaceExp_Homework {
	public static void main(String[] args) {
		Robot robot = new Robot();
		robot.showAttack();
	}
}
