package javaexp.a07_inheritance;

class Mz01{
	Flyway f;
	void attack(){
		System.out.println("공격을 하면서 지구를 지키다!!");
	}
	void setFlying(Flyway wing){
		this.f = wing;
	}
	void flytoTheSky(){
		System.out.print("마징가가 ~~ ");
		if(f!=null){
			f.fly();
		}else{
			System.out.println("날개가 장착 되지 않음!!");
		}
	}
}
interface Flyway{
	void fly();
}
// 인터페이스를 상속 받은 실제 클래스 정의
// 인터페이스는 implements를 통해서 상속 받는다!!
// Flyway f01 = new Wing01();
// f01.fly();
class Wing01 implements Flyway{
	@Override
	public void fly() {
		// TODO Auto-generated method stub
		System.out.println(" 동네를 나르다!![처음으로 하늘을~~]");		
	}	
}
class Wing02 implements Flyway{
	@Override
	public void fly() {
		// TODO Auto-generated method stub
		System.out.println(" 우리나라 전역을 나르다.");		
	}	
}
public class A12_interface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Mz01 m01 = new Mz01();
		Wing01 w01 = new Wing01();
		// 날개를 장착함..
		// void setFlying(Flyway wing){
		// 	Flyway wing = w01;   
		//  Flyway wing = new Wing01();
		m01.setFlying(w01);
		m01.flytoTheSky();
		m01.setFlying(new Wing02());
		m01.flytoTheSky();		
	}

}
