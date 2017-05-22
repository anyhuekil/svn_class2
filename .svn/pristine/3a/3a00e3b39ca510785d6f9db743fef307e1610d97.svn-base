package javaexp.a07_inheritance;

class Vehicle{
	String kind;
	int maxSpeed;
	int curSpeed;
	
	public Vehicle() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Vehicle(String kind, int maxSpeed) {
		this.kind = kind;
		this.maxSpeed = maxSpeed;
	}

	void speedUp(){
		curSpeed++;
		if(curSpeed>maxSpeed){
			curSpeed=maxSpeed;
		}
		System.out.println("속도가 증가되어 현재 속도:"+curSpeed);
	}
	public void driver(){
		System.out.println(kind+"가 운행을 합니다!");
	}
}
class Bus extends Vehicle{
	Bus(){
		super("버스",100);
	}
	// 재정의
	void speedUp(){
		curSpeed+=10;
		if(curSpeed>maxSpeed){
			curSpeed=maxSpeed;
		}
		System.out.println("속도가 증가되어 현재 속도:"+curSpeed);
	}	
	// 재정의
	public void driver(){
		System.out.println(kind+"가 많은 승객으로 태우고 운행을 합니다!");
	}		
}
class Ship extends Vehicle{
	Ship(){
		super("배",60);
	}
	void speedUp(){
		curSpeed+=3;
		if(curSpeed>maxSpeed){
			curSpeed=maxSpeed;
		}
		System.out.println("속도가 증가되어 현재 속도:"+curSpeed);
	}	
	public void driver(){
		System.out.println(kind+"가 많은 승객으로 태우고 물 위를 운행합니다!!");
	}		
}
public class A08_PolyMorphismExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Vehicle v1 = new Bus();
		v1.speedUp();
		v1.speedUp();
		v1.speedUp();
		v1.driver();
		Vehicle v2 = new Ship();
		v2.speedUp();
		v2.speedUp();
		v2.speedUp();
		v2.driver();
		// 상위 type [] 변수 = {하위 객체1(),하위 객체2(), 하위 객체3() }
		Vehicle []veArray={new Bus(),new Bus(), new Ship(), new Ship()};
		for(Vehicle v:veArray){
			v.speedUp();
			v.speedUp();
			v.speedUp();
			v.speedUp();
			v.driver();
		}
	}

}
