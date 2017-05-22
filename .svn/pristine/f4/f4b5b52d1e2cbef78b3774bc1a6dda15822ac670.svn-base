package javaexp.a06_object;

class Car01{
	private String kind;
	private int curSpeed;
	// 생성자 자동 생성..
	public Car01(String kind) {
		this.kind = kind;
	}
	public String getKind() {
		return kind;
	}
	public void setKind(String kind) {
		this.kind = kind;
	}
	public int getCurSpeed() {
		return curSpeed;
	}
	public void setCurSpeed(int curSpeed) {
		this.curSpeed = curSpeed;
	}
	public void speedUP(){
		System.out.println(kind+" 속도를 올립니다!! excel");
		curSpeed+=10;
		if(curSpeed>=120){
			System.out.println("제한 속도 입니다!!");
			curSpeed=120;
		}
		System.out.println("현재 속도는 "+curSpeed+"(km/h)~~~");
	}
	
	
}
public class A19_set_getMethod {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Car01 c = new Car01("BMW");
		c.speedUP();
		c.speedUP();
		c.speedUP();
		c.speedUP();
		c.setCurSpeed(200);
		System.out.println("등록된 속도값:"+c.getCurSpeed());
		c.speedUP();
				
	}

}
