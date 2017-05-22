package javahomework.a20_YiSoyoung.a0421;
class Vehicle{
	private String kind;
	private int maxSpeed;
	public Vehicle(String kind, int maxSpeed) {
		this.kind = kind;
		this.maxSpeed = maxSpeed;
	}
	public void showInfo(){
		System.out.println("종류는 "+kind+", 최고속도는 "+maxSpeed);
	}
	public String getKind() {return kind;}
	public void setKind(String kind) {this.kind = kind;}
	public int getMaxSpeed() {return maxSpeed;}
	public void setMaxSpeed(int maxSpeed) {this.maxSpeed = maxSpeed;}
}
class Car extends Vehicle{
	private int number; //타는 사람수
	public Car(String kind, int maxSpeed, int number){
		super(kind, maxSpeed);
		this.number = number;
	}
	public void driverCar(){
		System.out.print(getKind()+"인데, 최고속도가 "+getMaxSpeed()+"이다. ");
		System.out.println("타는 사람은 "+number+"명입니다");
	}
}
public class Homework0421_3 {
	public static void main(String[] args) {
		Car phrsche = new Car("포르쉐",250,5);
		phrsche.driverCar();
	}
}
