package javaexp.a08_objectdup;

// 인스턴스 멤버 클래스 : 외부 객체가 생성, 내부 클래스 사용가능
class InstOuter{	
	/*인스턴스 멤버 클래스
	 InstOuter.InstInnerMember
	 * */
	class InstInnerMember{
		String name="홍길동"; // 인스턴스 필드
//		static int number; static 사용 불가.
		void callName(){ // 인스턴스 메소드
			System.out.println(name+"이 호출 됩니다!!");
		}
		
	}
}
// 정적 멤버 클래스
// 내부에 static 멤버 클래스로 선언된 것을 말한다.
class OuterClass{
	/*정적(static) 멤버 클래스
	 * OuterClass.StaticMemberClass
	 * */
	static class StaticMemberClass{
		String name="정적(static) 멤버 클래스";
		static int number; // static 멤버 사용 가능
		void callName(){
			System.out.println(name+"이 호출 됩니다!!");
		}
	}
}
public class A01_dupClass {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 외부 클래스에서 인스턴스 멤버 클래스 내부 클래스를 호출할려면,
		// 먼저 외부 객체 생성..
		InstOuter outer = new InstOuter();
		// 내부 객체  ==> 
		// 외부클래스명.내부클래스명  참조변수 = 외부객체참조.new 내부클래스명();
		InstOuter.InstInnerMember inner = outer.new InstInnerMember();
		System.out.println("내부 클래스 필드(이름):"+inner.name);
		inner.callName();
		// 정적 멤버 클래스는 
		// 외부클래스명.내부클래스명 참조변수 = new 외부클래스명.내부클래스명();
		OuterClass.StaticMemberClass stinner = new OuterClass.StaticMemberClass();
		System.out.println("정적 멤버 클래스를 통한 객체 생성 필드:"+stinner.name);
		stinner.callName();
		
	}

}
