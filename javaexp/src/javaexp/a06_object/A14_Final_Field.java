package javaexp.a06_object;
class Man{
	static final double PI =3.145;
	final String nation="korean";
	final String ssn;
	String name;
	Man(String ssn, String name){
		//  필드의 데이터를 생성자를 통해서 초기화
		this.ssn=ssn;
		this.name=name;
	}
	void showInfo(){
		System.out.println("국적:"+nation);
		System.out.println("ssn:"+ssn);
		System.out.println("이름:"+name);
	}
}
public class A14_Final_Field {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Man m1 = new Man("800101-1802739","홍길동");
		m1.showInfo();
		m1.name="신길동"; // 일반 필드이기에 할당가능..
//		m1.ssn="800102-1802749"; final이기에 필드의 데이터 변경 불가능
//		m1.nation="japan";
//		final만 붙으면 객체단위 변경은 불가능
//	      참조객체가 달라지면 다른 데이터를 할당할 수 있다.
		Man m2 = new Man("900101-1802739","하길동");
		m2.showInfo();		
//		객체 상관없이 변경할 수 없는 상수는 어떻게?
//		static final이 붙으면 객체에 종속되지 않는 상수를 설정할 수 있다.
		System.out.println("파이값:"+Man.PI);
//		Man.PI=2.2111; 할당이 불가능..
//		일반적으로 상수는 대문자로 선언한다.
		
	}

}
