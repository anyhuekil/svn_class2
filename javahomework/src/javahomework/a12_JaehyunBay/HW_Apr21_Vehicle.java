package javaexp.a06_object;
/*
 *  Late HW. Apr21_vehicle.
 * 
 * 
숙제 0421.
1) 부모
클래스 Vehicle
필드 : 종류, 최고속도
메서드 : showInfo()
@@@인데 최고 속도가 @@@다
2) 자식
클래스 Car
메서드 driverCar()
@@@@인데 최고속도가 @@@다
타는 사람은 @@@@명이다.
*/

class Vehicle{
	public String kind;
	public int maxVel;
	Vehicle(){}  // 필수..
	Vehicle(String kind, int maxVel){
		this.kind = kind;
		this.maxVel = maxVel;
	}
	public void showInfo(){
		System.out.println(kind+"인데 최고속도는 "+ maxVel+ "mph 입니다.");
	}
}
class Car02 extends Vehicle{
	int riders;
	public Car02(String kind, int maxVel, int riders){
		super(kind, maxVel);
		this.riders = riders;
	}
	public void driverCar(){
		super.showInfo();
		System.out.println("타는 사람은 " + riders + "명 입니다.");
	}
	
}


public class HW_Apr21_Vehicle {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Vehicle v01 = new Vehicle("벤츠", 180);
		v01.showInfo();
		Car02 c02 = new Car02("바르마흐", 190, 6);
		c02.driverCar();
	}

}
