package javaexp.a07_inheritance;
class Vehecle{
	String kind;
	int maxVel;
	// 생성자 데이터 입력..
	Vehecle(String kind, int maxVel){
		this.kind=kind;
		this.maxVel=maxVel;
	}
	Vehecle(){
		this("탈것(기본값)", 100);
	}
	// 메서드.
	void setData(String kind, int maxVel){
		this.kind=kind;
		this.maxVel=maxVel;
	}
	void showInfo(){
		System.out.println(kind+
				"이며, 최고 속도가 "+maxVel+"(km/h)입니다");		
	}
}
class Car extends Vehecle{
	int personCnt;
	// super : 상속관계의 상위클래스의 멤버(생성자, 필드, 메서드)를 지칭
	// 1) 생성자 : super( )
	// 2) 필드, 메서드 : super.XXXX
	Car(String kind, int maxVel, int personCnt){
		// 상위클래스의 생성자를 호출..
		super(kind, maxVel);
		this.personCnt=personCnt;
	}
	void driverCar(){
		showInfo();
		System.out.println("타는 사람은 "+personCnt+"명 입니다.");
	}
}

public class A02_basicExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car c = new Car("아우디", 270, 2);
		c.driverCar();
	}

}
