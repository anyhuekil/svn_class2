package javaexp.a06_object;

class ShoppingMall{
	String name;
	String prodName01; //
	String prodName02;
	String prodName03;
	int price01;
	ShoppingMall(String name){
		System.out.println("온라인 쇼핑몰 "+name+"에 오신 것을 환영합니다!!");
	}
	// 매개 변수 갯수가 다른 것도 선언가능.
	void buyProduct(String prodName01){
		this.prodName01 = prodName01;
	}
	void buyProduct(String prodName01, String prodName02){
		this.prodName01 = prodName01;
		this.prodName02 = prodName02;
	}	
	// 매개변수의 type이 다르면 동일한 이름의 메서드 선언가능.
	void buyProduct(int price01){
		this.price01=price01;
	}
	// 매개변수의 type과 숫자가 동일하더라도, 다른 type의 매개변수의
	// 순서가 다르면 선언가능.
	void buyProduct(String prodName01, int price01){
		this.prodName01=prodName01;
		this.price01 = price01;
	}
	void buyProduct( int price01, String prodName01){
		this.prodName01=prodName01;
		this.price01 = price01;
	}	
}
public class A10_MethodOverLoad {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
