package javaexp.a00_basic;

public class A08_Exception {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
 자바에서는 프로그래밍상 내/외부적 오류에 대한 처리를 하고 있다.
 일반적으로 데이터가 input, output이 일어나는 곳에는 반드시
 예외 처리해야 한다.
 형식 예외 가망성이 있는 code
 try{
 	//형식 예외 가망성이 있는 code
 }catch(Exception e){
 	// 예외 발생시, 처리할 내용..
 }finally{
 	// 예외 발생 상관 없이  처리할 프로세스
 }
 * */
		try{
			System.out.println("프로그램!!! start!!");
			int num = 3/0; // 예외가 발생하면 하단의 내용을 수행하지 않고..
			System.out.println("프로그램 end!!");
		}catch(Exception e){  // Jump Expception으로 처리가 됨..
			System.out.println("예외가 발생했습니다.!!!");
			System.out.println("예외내용:"+e.getMessage());
		}finally{
			System.out.println("예외 상관 없이 처리될 내용!!");
		}
		
		
	}

}
