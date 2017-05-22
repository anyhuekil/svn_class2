package javahomework.a20_YiSoyoung.a0424;
/* Vehicle1 클래스
 * 	속성 : kind, maxSpeed, curSpeed
 * 	메소드 : speedUp, drive(탈것을 어떻게 운행)
 * Bus extends Vehicle
 * 	메소드 : speedUp(속도증가량차이), drive(사람을 많이 태우고 운행한다)
 * Ship extends Vehicle
 * 	메소드 : speedUp(속도증가량차이), drive(사람을 많이 태우고 운행한다) */
class Vehicle1 {
	private String kind;
	private int maxSpeed;
	private int curSpeed;
	public Vehicle1(String kind, int maxSpeed){
		this.kind = kind;
		this.maxSpeed = maxSpeed;
	}
	public void speedUp(){
		if(curSpeed<maxSpeed) curSpeed++;
	}
	public void drive(){System.out.println(kind+"를 운행한다");}
	public int getCurSpeed() {return curSpeed;}
	public void setCurSpeed(int curSpeed) {this.curSpeed = curSpeed;}
	public int getMaxSpeed() {return maxSpeed;}
	public String getKind() {return kind;}
}
class Bus extends Vehicle1{
	public Bus(String kind, int maxSpeed){super(kind,maxSpeed);}
	public void speedUp(){
		if(getCurSpeed()<=(getMaxSpeed()+10)) 
			setCurSpeed(getCurSpeed()+10);
		else
			setCurSpeed(getMaxSpeed());
	}
	public void drive(){System.out.println(getKind()+"가 사람을 많이 싣고 운행한다");}
}
class Ship extends Vehicle1{
	public Ship(String kind, int maxSpeed){super(kind,maxSpeed);}
	public void speedUp(){
		if(getCurSpeed()<=(getMaxSpeed()+50)) 
			setCurSpeed(getCurSpeed()+50);
		else
			setCurSpeed(getMaxSpeed());
	}
	public void drive(){System.out.println(getKind()+"가 물위를 운행한다");}
}
public class A07_polymorphismExp {
	public static void main(String[] args) {
		Vehicle1 bus = new Bus("대우",200);
		Vehicle1 ship = new Ship("오르비스",800);
		bus.speedUp();
		bus.drive();
		ship.speedUp();
		ship.drive();
	}
}
