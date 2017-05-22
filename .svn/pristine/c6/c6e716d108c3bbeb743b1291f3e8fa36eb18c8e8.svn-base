package javaexp.a04_statement;

public class Homework_170412 {

	public static void main(String[] args) {
	// 1. 조건문과 반복문의 종류를 괄호 속에 넣어보세요.
	//		1_1. 조건문 : if, switch
	//		1_2. 반복문 : for,while,do while
		
	/***********************/
	// 2. for문을 이용하여 10~150까지 정수 중에 5의 배수의 총합을 구하는 코드를 작성하세요.
		System.out.println("####2번문제####");
		int sum=0;
		for(int num=10; num<=150; num++)
			if(num%5==0) sum+=num; //5의 배수일 때만 sum에 저장
		System.out.println(sum); //결과 출력
	/***********************/	
		System.out.println("-------------------");
		System.out.println("### 3번문제 ###");
	// 3. while문, Math.random()을 이용하여, 주사위 숫자 두 개가 나오게 하고, 
	// 주사위 합이 5가 아니면 계속, 합이 5이면 중단처리 되게 하세요.
		while(true){
			int dice1=(int)(Math.random()*6+1);
			int dice2=(int)(Math.random()*6+1);
			System.out.println("주사위1:"+dice1+" 주사위2:"+dice2);
			
			if(dice1+dice2==5){
				System.out.println("!!!! 합이 5이므로 중단합니다. !!!!");
				System.out.println(dice1+", "+dice2+"이므로 합 "+(dice1+dice2));
				break;
			}
				
		}
		System.out.println("---------------------");
	// 4. 이중 for문을 이용하여 방정식 4x + 5y = 60인 모든 해를 구하세요 x, y는 10이하 양의 정수
		System.out.println("### 4번문제 ###");
		System.out.println("4x + 5y = 60인 모든 해를 구합니다.");
		int quest=0;
		for(int x=0; x<=10; x++){
			for(int y=0; y<=10; y++){
				quest=4*x+5*y;
				if(quest==60)
					System.out.println("x: "+x+" y: "+y);
			}
		}
	}

}
