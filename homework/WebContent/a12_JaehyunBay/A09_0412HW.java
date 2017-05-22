package a04_;

public class A09_0412HW {
	public static void main(String[] arg){
		
		/*
		1.조건문 반복문 서술.
		2. for문으로 10~150까지 정수중에 5의 배수의 총합?
		3.while문, Math.random()을 이용해, 주사위 숫자 두개가 나오고 합이 5아니면 계속.
		합이 5일경우 중단처리. 출력형식: @@,@@ 합@@
		4.이중 for문으로 방정식 4x+5y =60인 모든해를 구하라. x,y는 10이하 정수.
		출력형식: x:@@ y:@@ x+y:@@
		 
		*/

	/*	1. 
	 	조건문: if(){} else(){}, 
	 		switch(condition){ 
	 		case(conditionValue): break;
	 		default:
	 		} 
		반복문: for( ; ; ){ }
			while(){} 
			do{}while();
		
		2.
	*/	
		int sum = 0;
		for(int inx =10; inx<=150; inx++){
			if(inx%5 ==0){
				sum+=inx;
			}
		}
		System.out.println("10~160, 5의배수 sum: "+ sum);
	
	//3.while문, Math.random()을 이용해, 주사위 숫자 두개가 나오고 합이 5아니면 계속.
	//	합이 5일경우 중단처리. 출력형식: @@,@@ 합@@
		int ran01;
		int ran02;
		do{
			ran01 = (int)(Math.random()*6+1);
			ran02 = (int)(Math.random()*6+1);
			System.out.print("첫번째 주사위"+ ran01 + " ");
			System.out.print("두번째 주사위"+ ran02 + " ");
			System.out.print("두 주사위합"+ (ran01+ran02) );
			System.out.println();
		}while((ran01+ ran02) != 5);
	//4.이중 for문으로 방정식 4x+5y =60인 모든해를 구하라. x,y는 10이하 정수.
	//	출력형식: x:@@ y:@@ x+y:@@
		
		for(int opr1 = 0; opr1 <= 10; opr1++){
			for(int opr2 = 0; opr2 <= 10; opr2++){
				if(4*opr1 + 5*opr2 ==60){
					System.out.println("x: "+ opr1 + " y: "+ opr2 + " 일때  "+ (4*opr1 + 5*opr2) );
				}
			}
		}
	
	
	
	
	}
}
