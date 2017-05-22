package javaexp.a06_object;

/*
자기소개(1단계)
–field : 이름, 사는곳, 나이
생성자(이름 입력)
inputData (사는곳, 나이)
introMyself() : 출력 처리.
 내이름은 @@이고, 나이는 @@이며, 사는 곳은 @@@입니다.
*/

class IntroduceMyself{
	String name;
	String address;
	int age;
	
	IntroduceMyself(String name){
		this.name=name;
	}
	void inputData(String address, int age){
		this.address=address;
		this.age=age;	
	}
	void introMyself(){
		System.out.println("내이름은 " + name + "이고, 나이는 " + age + "이며, 사는 곳은 " + address + "입니다.");
	}

}

public class H0419_2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		IntroduceMyself i01 = new IntroduceMyself("장은아");
		i01.inputData("강남",26);
		i01.introMyself();
		
	}

}
