/*
 숙제 - A14_0426
 인터페이스 AttackWay
 추상메서드 attack();
 RocketAttack : AttackWay를 상속받은 실제 클래스
 attack() : 로켓공격하다
 Robot클래스
 필드: AttackWay
 메서드 : showAttack(){ 
 -attack()
 메서드 setAttackWay(AttackWay attway)
*/
package javahomework.a13_SeoJunghyo;

interface SkillWay{
	void master();
	void cast();
}
class Blizzard implements SkillWay{

	@Override
	public void master() {
		// TODO Auto-generated method stub
		System.out.println("블리자드 스킬 배움.");
	}

	@Override
	public void cast() {
		// TODO Auto-generated method stub
		System.out.println("블리자드 시전!");
	}
	
}
class Meteo implements SkillWay{

	@Override
	public void master() {
		// TODO Auto-generated method stub
		System.out.println("메테오 스킬 배움.");
	}

	@Override
	public void cast() {
		// TODO Auto-generated method stub
		System.out.println("메테오 시전!");
	}
	
}
class Sorceress{
	SkillWay s;
	void setSkillWay(SkillWay skill){
		this.s=skill;
	}
	void castSkill(){
		System.out.print("소서리스 ");
		if(s!=null){
			s.master();
			s.cast();
		}else{
			System.out.println("스킬을 아직 배우지 못함");
		}
	}
}

public class a04_homework_attack_0426 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Blizzard b1 = new Blizzard();
		Sorceress s1 = new Sorceress();
		s1.setSkillWay(b1);
		s1.castSkill();
		Sorceress s2 = new Sorceress();
		s2.castSkill();
		s2.setSkillWay(new Meteo());
		s2.castSkill();

	}

}
