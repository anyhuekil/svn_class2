package javahomework.a23_Janghyeyeong.a170426;

interface AttackWay{
	public void attack();
}

class RocketAttack implements AttackWay{

	@Override
	public void attack() {
		// TODO Auto-generated method stub
		System.out.println("로켓공격하다");
	}
}

class Robot01{
	AttackWay a;
	void showAttack(){
		a.attack();
	}
	void setAttackWay(AttackWay attway){
		this.a=attway;
	}
}


public class InterfaceHomework {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Robot01 r1 = new Robot01();
		RocketAttack rocket = new RocketAttack();
		r1.setAttackWay(rocket);
		r1.showAttack();
	}

}




