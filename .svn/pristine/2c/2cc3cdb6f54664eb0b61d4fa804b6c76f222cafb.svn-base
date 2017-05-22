/*
 숙제
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
package javahomework.a13_SeoJunghyo;
class Vehicle{
	String kind;
	int maxSpeed;
	Vehicle(String kind, int maxSpeed){
		this.kind=kind;
		this.maxSpeed=maxSpeed;
	}

	void showInfo(){
		System.out.println("종류: "+kind);
		System.out.println("최고시속: "+maxSpeed+"km/h");
	}
}
class Car extends Vehicle{
	int personCnt;
	Car(String kind, int maxSpeed, int personCnt){
		super(kind, maxSpeed);
		this.personCnt=personCnt;
	}
	void showInfo2(){
		showInfo();
		System.out.println("탑승인원: "+personCnt+"명");
	}

}
public class a03_homework_car_0421 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Vehicle v1 = new Vehicle("아우디", 270);
		v1.showInfo();
		Car c1 = new Car("BMW", 260, 15);
		c1.showInfo2();

	}

}
