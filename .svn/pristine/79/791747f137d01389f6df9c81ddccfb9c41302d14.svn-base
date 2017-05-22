/* 확인예제
 곰돌이 3형제가 사과 먹는 이야기
 클래스 Bear
 filed명 : 이름, 각자가 먹은 갯수, 현재 전체 남은 갯수
 생성자 이름 할당
 메서드 : restoreApple(사과 개수추가)
 		  eatApple(): 각 곰돌이가 사과를 먹을 떄 처리 : 각자 먹은 갯수, 현재 전체 남은 갯수.
 출력
 @@@가 사과를 먹는다.
 @@@ 먹은 사과갯수는 @@@
 현재 남은 사과갯수 @@다.		  
*/

package javahomework.a13_SeoJunghyo;

class Bear{
	String name;
	int eatCount;
	static int nowCount;
	Bear(String name){
		this.name=name;
		this.nowCount=100;		
	}
	void addApple(int addCount){
		nowCount+=addCount;
		System.out.println(name+"이 추가한 사과 갯수: "+addCount+"\t 남은 사과 갯수: "+nowCount);
	}
	void eatApple(int eatCount){
		nowCount-=eatCount;
		System.out.println(name+"이 먹은 사과 갯수: "+eatCount+"  \t 남은 사과 갯수: "+nowCount);
	}
}
public class a02_homework_staticBear_0419 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Bear b1 = new Bear("일진곰");
		Bear b2 = new Bear("찐따곰");
		Bear b3 = new Bear("미친곰");
		System.out.println("현재 사과 갯수: "+Bear.nowCount);
		b1.eatApple(10);
		b2.eatApple(12);
		b3.addApple(14);
	}
}
