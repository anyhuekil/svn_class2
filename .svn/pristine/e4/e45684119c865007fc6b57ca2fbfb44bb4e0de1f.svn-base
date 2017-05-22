package javahomework.a02_kimgeonwoo;

interface AttackWay{
	public void attack();
}

class RocketAttack implements AttackWay{
	@Override
	public void attack(){
		System.out.println("로봇 공격");
	}
}

class Robot {
	AttackWay atw;
	
	public void setAttackWay(AttackWay atw){
		this.atw = atw;
	}
	
	public void showAttack(){
		atw.attack();
	}	
}

public class A02_Interface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		RocketAttack ra = new RocketAttack();
		Robot r = new Robot();
		r.setAttackWay(ra);
		r.showAttack();
	}

}
