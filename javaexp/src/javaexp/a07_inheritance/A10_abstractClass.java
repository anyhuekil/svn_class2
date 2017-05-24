package javaexp.a07_inheritance;

abstract class Animal01{
	// 공통 메서드..
	public void eat(){
		System.out.println("맛있게 먹다!!");
	}
	// 하위클래스에서 재정의할 메서드..
	// 추상메서드는 앞에 abstract modifier가 붙고,
	// 메서드의 {}<body> 부분이 없다..
	// 클래스 메서드 가운데 추상메서드가 하나라도 있으면,
	// 추상 클래스가 된다. 추상클래스는 abstract를 붙여 준다.
	public abstract void move();
	
}

class Bird extends Animal01{
	// 추상클래스를 상속받은 하위 클래스는
	// 반드시 추상메서드를 재정의 하여야 한다.
	// 기능 메서명의 통일을 유지할 수 있다.
	@Override
	public void move() {
		// TODO Auto-generated method stub
		System.out.println("Flying!!! Sky~~");
	}	
}
// Insect (곤충클래스)
class Insect extends Animal01{
	@Override
	public void move() {
		// TODO Auto-generated method stub
		System.out.println("기어 다니다!!");
	}	
}
class Fish extends Animal01{
	@Override
	public void move() {
		// TODO Auto-generated method stub
		System.out.println("물에서 swimming!!!");
	}	
}

public class A10_abstractClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Animal01[] ans={new Bird(), new Insect(), new Fish()};
		for(Animal01 an:ans){
			an.eat();
			an.move();
		}
	}

}
