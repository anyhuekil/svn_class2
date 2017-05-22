package javaexp.a06_object;

class SingleWoman{
	private int num01;
	// 싱글톤을 하기위해 필드로 객체 생성
	private static SingleWoman singleWm = new SingleWoman();
	// 외부에서 객체생성을 차단. : private 붙음..
	private SingleWoman(){} // public SingleWoman(){} :선언하지 않으면
	// static으로 싱글톤 객체를 접근하게 처리.
	static SingleWoman getInstance(){
		return singleWm;
	}	
	public int getCount(){
		num01++;
		return num01;
	}
}

public class A13_SingleTon {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		SingleWoman w1 = new SingleWoman();에러발생 생성자  접근private이기에
		SingleWoman w1 = SingleWoman.getInstance();
		SingleWoman w2 = SingleWoman.getInstance();
		SingleWoman w3 = SingleWoman.getInstance();
		// w1, w2 는 같은 heap영역에 객체를 바라보고 있는 것..
		if( w1 == w2){
			System.out.println("w1,w2는 같은 객체");
		}else{
			System.out.println("w1,w2는 다른 객체");
		}
		System.out.println(w1.getCount());
		System.out.println(w1.getCount());
		System.out.println(w2.getCount());
		System.out.println(w3.getCount());
		System.out.println(w2.getCount());
	}

}
