package javaexp.a10_api;

class Woman{
	private String name;

	public Woman(String name) {
		this.name = name;
	}
	
}
public class A02_equals_hashcode {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
equals : 객체의 주소가 다르더라도 같은 데이터를 가지고 같은 type을
쓰고 있으면 boolean값을 true로 처리한다.
 * */
		String name01 = new String("홍길동");
		String name02 = new String("홍길동");
		System.out.println("주소확인:"+(name01==name02));
		// 같은 class를 사용하고, 데이터도 같기에..
		System.out.println("데이터확인:"+(name01.equals(name02)));
/*
 hashcode() : 객체를 식별할 수 있는 정수값을 가짐.
 * */		
		Woman w01 = new Woman("이영희");
		Woman w02 = new Woman("이영희");
		
		System.out.println("equals:"+w01.equals(w02));
		System.out.println("w01의 hashCode:"+w01.hashCode());
		System.out.println("w02의 hashCode:"+w02.hashCode());
// toString() : 객체 문자 정보 '클래스명@16진수해시 코드
		System.out.println("w01의 객체정보:"+w01.toString());
		System.out.println("w02의 객체정보:"+w02.toString());
	}

}
