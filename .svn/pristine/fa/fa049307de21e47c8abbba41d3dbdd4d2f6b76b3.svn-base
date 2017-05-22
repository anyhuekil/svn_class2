package javaexp.a04_statement;

public class Z99_homework0412 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* 확인예제
 1. 조건문과 반복문의 종류를 괄호 속에 넣어보세요.
    1) 조건문: ( if ), ( switch )
    2) 반복문: (   ), (    ), (   )
 
 2. for문을 이용하여 10~150까지 정수 중에 5의 배수의
 	총합을 구하는 코드를 작성하세요.
 
 3. while문, Math.random()을 이용하여 주사위 숫자 두개가 나오게 하고
 	주사위 합이 5가 아니면 계속, 합이 5면 중단 처리되게 하세요.
    1) 출력형식 : @@@, @@@ 합 @@@
 
 4. 이중 for문을 이용하여 방정식 4x+5y=60인 모든 해를 구하세요. x,y는 10이하 정수
    1) 출력형식 : x:@@, y:@@
*/
		
		// 조건문 : if switch
		// 반복문 : for while do_while
		int sum=0;
		for(int cnt=10;cnt<=150;cnt++){
			if(cnt%5==0){
				sum+=cnt;
				System.out.println(sum);
			}
		}
		System.out.println("총합 : "+sum);
		System.out.println("-----2번문제 끝-----");
		
		int sumNum=0;
		while(true){
			int num01=(int)(Math.random()*6);
			int num02=(int)(Math.random()*6);
			sumNum = num01+num02;
			System.out.print(num01+"\t");
			System.out.println(num02+"\t");
			if(sumNum==5){
				break;
			}
			
		}
		
		System.out.println("합 : "+sumNum);
		System.out.println("-----3번 문제 끝------");
		int xySum = 0;
		for(int x=1;x<=10;x++){
			for(int y=1;y<=10;y++){
				sum = (x*4)+(y*5);
				if(sum==60){
					System.out.println("x : "+x+" , y : "+y);
				}
			}
		}
		System.out.println("-----4번 문제 끝------");
		
		
		
		
		
		
		
		
		
		
		
	}

}
