package javaexp.a06_object;

class GoMountain001{	
	// String ...names 가변 입력값 선언..
	// 호출하는 곳에서 여러 개의 입력값을
	// 가변적으로 입력이 가능하도록 처리
	public void callName(String ...names){
		// names는 배열
		for(String name:names){
			// 부른이름..!!
			System.out.println(name+"~~~ 잘 있는지?");
		}
	}
}
public class A17_variableMethod {
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		GoMountain001 m1 = new GoMountain001();
		System.out.println("산에 가서 부른 이름!!");
		m1.callName("홍길동");
		System.out.println("산에 가서 부른 이름!!");
		m1.callName("김길동","신길동");
		System.out.println("산에 가서 부른 이름!!");
		m1.callName("오철수","김영희","신국주");
	
		
	}

}
