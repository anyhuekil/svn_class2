package javaexp.a07_inheritance;
class Animal{
	int speed;
	public void running(){
		speed+=5;
		System.out.println("뛰고 있습니다!");
		System.out.println("현재 속도!"+speed);
	}
	// 하위클래스에서 재정의를 하지 못하게 처리.
	public final void stop(){
		speed=0;
		System.out.println("속도를 멈춤!!");
	}
}
class Jubatus extends Animal{
	public void running(){
		speed+=20;
		System.out.println("뛰고 있습니다!");		
	}
	// 상위클래스에서 final을 메서드에  붙였기 때문에 하위에서
	// 하위 클래스에서 메서드를 재정의하지 못 한다.
//	public void stop(){}	
}
class Rabbit extends Animal{}
// 하위클래스에서 상속이 가능하다..
class RabbitKind extends Rabbit{}
final class Turtle extends Animal{}
// 상위 클래스가 class앞에 final붙이면
// 하위 클래스에서 final붙은 상위클래스를
// 상속하지 못한다.
//class OceanTurtle extends Turtle{};


public class A05_final {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
