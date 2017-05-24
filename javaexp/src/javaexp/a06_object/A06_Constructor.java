package javaexp.a06_object;

class Car{
	/* this 키워드는 field명을 지역변수와 동일할 때,
	 * 구분해주는 역할을 할 뿐만 아니라,
	 * 선언되어 있는 생성자를 재활용할 때도 활용된다.
	 * ps) super. :상속이 일어날 때, 동일한 역할로 상위 클래스의
	 * field명, 생성자, 메서드를 호출할 때, 현재클래스와 구분하기
	 * 위하여 활용된다.
	 * */
	// field 선언!!
	String model;
	String color;
	int maxSpeed;
	Car(String model){
		// this.field명 : 로컬변수와 field명이 동일할 때
		// 구분하기위하여 활용.
		// 중복코드가 발생하는 것을 막기위해..기존에 구현된 생성자를 활용
		this(model, "은색", 250);
//		this.model=model; 
//		color="은색";
//		maxSpeed=250;
	}
	Car(String model, String color){
		this(model, color, 250);
//		this.model=model;
//		this.color=color;
//		maxSpeed=250;
	}	
	Car(String model, String color, int maxSpeed){
		this.model=model;
		this.color=color;
		this.maxSpeed=maxSpeed;
	}		
	
}

public class A06_Constructor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car c1 = new Car("포르쉐");
		System.out.println("c1의 차종"+c1.model);
		System.out.println("c1의 색상"+c1.color);
		System.out.println("c1의 최고속도"+c1.maxSpeed);
		Car c2 = new Car("BMW","흰색");
		System.out.println("c2의 차종"+c2.model);
		System.out.println("c2의 색상"+c2.color);
		System.out.println("c2의 최고속도"+c2.maxSpeed);
		Car c3 = new Car("재규어","진한블루",280);
		System.out.println("c3의 차종"+c3.model);
		System.out.println("c3의 색상"+c3.color);
		System.out.println("c3의 최고속도"+c3.maxSpeed);		
		
	}

}
