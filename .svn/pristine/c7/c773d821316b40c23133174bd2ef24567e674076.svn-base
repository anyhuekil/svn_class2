package javaexp.a06_object;

class QuickBoard{
	private String rider;
	private int curVelocity;
	public QuickBoard(String rider) {
		this.rider = rider;
		System.out.println(rider+"가 퀵보드를 타서");
	}
	public void speedUp(){
		System.out.println("속도를 올립니다.");
		curVelocity++;
		if(curVelocity>20){
			System.out.println("제한 속도 20(km/h)입니다.");
			curVelocity=20;
		}
		System.out.println("현재 속도 "+curVelocity+"(km/h)");
	}
	public void speedDown(){
		System.out.println("속도를 내립니다.");
		curVelocity--;
		if(curVelocity<0){
			System.out.println("현재 멈춰 있습니다.");
			curVelocity=0;
		}
		System.out.println("현재 속도 "+curVelocity+"(km/h)");
	}	
}
public class A20_set_getExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		QuickBoard b01 = new QuickBoard("김철수");
		for(int cnt=0;cnt<=22;cnt++)
		b01.speedUp();
		for(int cnt=0;cnt<=22;cnt++)
		b01.speedDown();
	
	}

}
