package javaexp.a09_exception;

// 여러 분산된 클래스의 동일한 예외처리는 떠넘기기로 처리해서,
// 호출하는 클래스나 main()에서 한꺼번에 처리할 수 있다.
class MakeClass01{
	// 예외 발생을 떠넘기기1
	// 메서드명 throws 예외 넘기기 ..
	public static void findClass() throws ClassNotFoundException{
		Class cass=Class.forName("java.lang.String");
	}
}
class MakeClass02{
	// 예외 발생을 떠넘기기2
	public static void findClass() throws ClassNotFoundException{
		Class cass=Class.forName("java.lang.String");
	}
}
public class A05_throwsException {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 여러 분산된 클래스의 동일한 예외처리는 떠넘기기로 처리해서,
		// 호출하는 클래스나 main()에서 한꺼번에 처리할 수 있다.
		try {
			MakeClass01.findClass();
			MakeClass02.findClass();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
//		main()에서도 예외를 위임할 수 있지만, 결국은 JVM이 최종적으로
//		예외를 처리하여야 하기 때문에, main()에서 throws Exception을
//		붙이는 것은 좋지 못한 예외 처리방법이다.
//		개발자가 예외처리의 최종적으로 관리하려면, main()에서는 위임하기
//		보다 try~catch로 처리하는 것이 일반적이다.
	}

}
