/* 숙제
 은행에 가서(1단계)
 1) 계좌
 filed : 계좌명
 생성자(계좌명 입력)
 input(입금액)
 	@@@님 @@@원 입금했습니다.(현잔액 @@@)
 output(출금액)
 	@@@님 @@@원 출금했습니다.(현잔액 @@@)
 
 자기소개(1단계)
 filed : 이름, 사는곳, 나이
 	- 생성자(이름입력)
 	- inputdata(사는곳, 나이)
 	- introMyself() : 출력처리
 	내이름은 @@이고 나이는 @@이며 사는 곳은 @@이다.
*/ 	
package javahomework.a13_SeoJunghyo;
class Intro{
	String name;
	String loc;
	int age;
	

	Intro(String name){
		this.name=name;
		this.loc="브라질";
		this.age=31;
	}
	
	void info(String loc, int age){
		this.loc=loc;
		this.age=age;
	}
	void introMyself(){
		System.out.println("내이름은 "+name+"이고 나이는 "+age+"세이며 사는 곳은 "+loc+"이다");
	}
}
public class a02_homework_intro_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Intro me =  new Intro("호날두");
		Intro rival = new Intro("메시");
		Intro friend = new Intro("마르셀루");
		me.info("포루투갈", 32);
		me.introMyself();
		rival.info("아르헨티나", 31);
		rival.introMyself();
		friend.introMyself();

	}

}
