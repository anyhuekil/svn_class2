package javaexp.a07_inheritance;
abstract class Robot{
	String name;
	Robot(String name){
		this.name=name;
	}
	public abstract void attack();
	public void call(){
		System.out.println(name+"이 호출되다!!");
	}
}
class Mz extends Robot{
	Mz() {
		super("마징거Z");
	}
	@Override
	public void attack() {
		System.out.println(name+"이 로켓주먹으로 공격을 하다!!");
	}
}
class Gundan extends Robot{
	Gundan() {
		super("건담");
	}
	@Override
	public void attack() {
		System.out.println(name+"이 변신공격으로 공격을 하다!!");
	}
}


public class A11_abstractExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Robot r1 = new Mz();
		r1.call();
		r1.attack();
		Robot r2 = new Gundan();
		r2.call();
		r2.attack();		
	}

}
