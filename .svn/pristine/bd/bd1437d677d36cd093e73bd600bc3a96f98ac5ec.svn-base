package javahomework.a20_YiSoyoung.a0424;
/* Work - super class
    필드 : kind(직업종류) 
   생성자에서 필드 초기화
    메서드 : working() @@가 일을 합니다
 * Engineer extends Work
 	필드 : kind(직업종류) 
 	생성자 필드 초기화
 	메서드 : @@가 프로그램 개발을 합니다
 * PoliceMan extends Work
 	필드 : kind(직업종류) 
 	생성자 필드 초기화
 	메서드 : @@가 도둑을 잡습니다 */
class Work{
	private String kind;
	public Work(){}
	public Work(String kind){this.kind = kind;}
	public void working(){System.out.println(kind+"가 일을 합니다");}
	public String getKind() {return kind;}
}
class Engineer extends Work{
	public Engineer(String kind){super(kind);}
	@Override
	public void working() {
		System.out.println(getKind()+"가 프로그램 개발을 합니다");
	}
}
class PoliceMan extends Work{
	public PoliceMan(String kind){super(kind);}
	@Override
	public void working() {
		System.out.println(getKind()+"가 도둑을 잡습니다");
	}
}
public class A03_OverridingExp {
	public static void main(String[] args) {
		PoliceMan p = new PoliceMan("경사");
		Engineer e = new Engineer("과장 프로그래머");
		p.working();
		e.working();
	}
}
