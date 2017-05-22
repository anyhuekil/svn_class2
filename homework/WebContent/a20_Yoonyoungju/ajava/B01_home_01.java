package javaexp.a04_statement;

public class B01_home_01 {
	
	/*
		1. 조건문과 반복문의 종류를 괄호 속에 넣어 보세요	
		조건문 :(if),(switch)
		반복문:(for),(while),(dowhile)
		 	
	 */
	
	
	public static void main(String[] args) {
		//2. for 문을 이용하여 10~150까지 정수 중에 5의 배수의 총합을 구하는 코드르 작성하세요		
			int sum=0;// 누적처리할 변수+= 추가할 데이터;
			for(int cnt=9; cnt <= 150;cnt++){
				if (cnt%5 ==0){
				System.out.print(cnt);
				if( cnt != 150 ){
					System.out.print("+");
				}
				sum+=cnt;
				}
			}
			System.out.println("="+sum);
			
			
	}

}
