package javahomework.a00_resolve;

interface AttackWay{
	void attack();
}
class RocketAttack implements AttackWay{

	@Override
	public void attack() {
		// TODO Auto-generated method stub
		System.out.println("로켓공격을 하다.");
	}	
}
class Robot{
	private String name;
	private AttackWay way;
	Robot(String name){
		this.name=name;
	}
	public void setWay(AttackWay way) {
		this.way = way;
	}
	public void showAttack(){  
		
		System.out.println(name+"이 ");
		if(way!=null){
			way.attack();
		}else{
			System.out.println("공격을 하지 못합니다.");
		}
	}
	
}
public class A0426_interface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Robot b1 = new Robot("건담");
		b1.setWay(new RocketAttack());
		b1.showAttack();
	}

}
