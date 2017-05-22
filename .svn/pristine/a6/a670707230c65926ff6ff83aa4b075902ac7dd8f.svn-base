package a00_basic0413;
/* 확인예제..
 * Workman 속성값 kind(직업의 종류)
 *         메서드 work() @@가 일을 하다
 * FireMan 속성값 wkLoc(일을 하는 장소)
 *         메서드 turnoff() @@가 @@에서 불을 끄다
 * */
class Workman {
	private String kind;
	public Workman(){}
	public Workman(String kind){
		this.kind = kind;
	}
	public void work(){
		System.out.println(kind+"가 일을 하다");
	}
	public String getKind() {return kind;}
	public void setKind(String kind) {this.kind = kind;}
}
class FireMan extends Workman{
	private String wkLoc;
	public FireMan(){}
	public FireMan(String kind, String wkLoc){
		super(kind);
		this.wkLoc = wkLoc;
	}
	public void turnoff(){
		System.out.println(getKind()+"가(이) "+wkLoc+"에서 불을 끄다");
	}
}
public class Homework0413_1 {
	public static void main(String[] args) {
		FireMan fireMan = new FireMan("소방관","강남대로94길");
		fireMan.turnoff();
	}
}
