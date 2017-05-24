package javaexp.a06_object;
class Computer{
	String comp;
	int price;
	String memory="8G";
	
	// 생성자를 통해 초기값 설정
	// 생성자명(dataType 지역변수명1, dataType 지역변수명2)
	Computer(String comp, int price, String memory){
		// field와 지역변수 동일한 이름을 구분하기 위해 
		// this. : (현재  class의).field
		this.comp=comp; // 생성자를 통해서 입력받은 데이터를 field값을 사용
		this.price=price;
		this.memory=memory;
		
	}
	// 생성자가 사용자 정의로 구현되면, 기존 default생성자는  
	// 없어지기에, default 생성자도 활용하려면 선언하여야 한다.
	Computer(){}
}
public class A04_FieldInit {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Computer p1 = new Computer();
		System.out.println("객체의 field 초기값");
		System.out.println(p1.comp);
		System.out.println(p1.price);
		System.out.println("초기에 할당된 값이 있을 때(권장하지 않음)");
		System.out.println(p1.memory);
		// Computer(String comp, int price, String memory)
		// 생성자를 통해서 초기값 할당
		Computer p2 = new Computer("삼성전자",1500000,"16GB");
		System.out.println("p2:"+p2.comp);
		System.out.println("p2:"+p2.price);
		System.out.println("p2:"+p2.memory);
		
	}

}
