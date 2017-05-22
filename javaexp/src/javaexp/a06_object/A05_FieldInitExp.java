package javaexp.a06_object;


class BaseBallTeam{
	String teamName="팀이름 없음";
	int vic;
	int eq;
	int def;
	double vicRatio;
	BaseBallTeam(){
		System.out.println(teamName+" 팀,  "+vic+"승, "+eq+
				"무, "+def+"패, 승률 "+vicRatio);
	}
	BaseBallTeam(String n){}
	BaseBallTeam(String teamName, int vic, int eq, int def){
		this.teamName=teamName;
		this.vic = vic;
		this.eq=eq;
		this.def = def;
		double tot=vic+eq+def;
		this.vicRatio=vic/tot;
	}
}
class Person{
	Person(){}
	Person(int age){}  // 입력값의 갯수가 다르면 선언이 가능하다.
	Person(int height, int age){}
	Person(String name){} // 입력값의 갯수가 같더라도 type이 다르면 선언이 가능
//	Person(int age, int height){} type이 같기 때문에.
	Person(String name, int age){}
	Person( int age, String name){} // 입력값의 type의 순서가 다르면 선언가능
	
}
public class A05_FieldInitExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		BaseBallTeam t1 = new BaseBallTeam();
		BaseBallTeam t2 = new BaseBallTeam("KIA",11,0,3);
		System.out.println(t2.teamName+" 팀,  "+t2.vic+"승, "+t2.eq+
				"무, "+t2.def+"패, 승률 "+t2.vicRatio);
	}

}
