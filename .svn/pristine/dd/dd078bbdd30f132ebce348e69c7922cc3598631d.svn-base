package javaexp.a06_object;
/* 곰돌이 3형제가 사과 먹는 이야기
 *   field명 : 이름, 각자 먹은 갯수, 현재 남은 사과갯수
 *    restoreApple(사과갯수 추가)
 *    eatApple();
 *    각자가 먹은 갯수, 현재 전체 남은 사과 갯수
 *    출력 : @@@가 사과 먹는다
 *          @@@가 먹은 사과 갯수는 @@@
 *          현재 남은 사과 갯수 @@
 * */
class Bear{
	private String name;
	private int eatNo;
	public static int appleNo;
	public Bear(String name){
		this.name = name;
	}
	public void restoreApple(int appleNo){ //  사과갯수 추가
		this.appleNo += appleNo;
	}
	public void eatApple(){
		eatNo++;
		appleNo--;
		System.out.print(name+"가(이) 사과를 먹는다. ");
		System.out.println(name+"가(이) 먹은 사과 갯수는 "+eatNo);
		System.out.println("현재 남은 사과 갯수 : "+appleNo);
	}
}
public class Homework0419_3 {
	public static void main(String[] args) {
		Bear first = new Bear("first");
		Bear second = new Bear("second");
		Bear third = new Bear("third");
		first.restoreApple(100); //첫째가 사과를 100개 채워 넣음. 둘째랑 셋째도 좋겠네요
		first.eatApple();
		first.eatApple();
		second.eatApple();
		third.eatApple();
	}
}
