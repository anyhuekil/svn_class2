package javahomework.a12_JaehyunBay;
/*
곰돌이 사과 먹기.
클래스 Bear
field명: 이름, 각자가 먹은 갯수, 현재 전체갯수.
생성자: 이름할당
method: restoreApple(사과갯수 추가)
eatApple() : 각 곰돌이가 사과를 먹을떄 처리.
	각자가 먹은 갯수, 현재 전체남은갯수.

output: @@@사과를 먹는다.
		@@@먹은 사과갯수 @@@
		현재 남은 사과갯수@@@.
*/
class Bear01{
	String name;
	int nowEat;
	static int currRest =10;
	String eating(String name, int nowEat){
		this.name = name;
		this.nowEat = nowEat;
		return name;
	}
	void print(){
		System.out.println(name+ "가 "+ nowEat +"개를 우걱우걱!!"+" 지금 "+ currRest+"개 남앗네요.");
	}
}



public class HW_Apr19_apple {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Bear01 b1 = new Bear01();
		System.out.println("원래 사과갯수는 "+ Bear01.currRest +"개 입니다!");
		b1.eating("taddy1",3);  // 출력을 위한.. name, nowEat;
		Bear01.currRest -= 3;  // 공동 사과갯수 처리  사실 b1,b2,b3상관없어서 Bear01클래스로 바꾸는듯..
		b1.print();
		Bear01 b2 = new Bear01();
		b2.eating("taddy2",1);  // 출력을 위한.. name, nowEat;
		b2.currRest -= 1;// 공동 사과갯수 처리
		b2.print();
		Bear01 b3 = new Bear01();
		b3.eating("taddy3",4);   // 출력을 위한.. name, nowEat;
		b3.currRest -= 4;// 공동 사과갯수 처리
		b3.print();
		
	}

}
