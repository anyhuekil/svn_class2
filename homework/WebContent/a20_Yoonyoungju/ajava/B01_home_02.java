package javaexp.a04_statement;

public class B01_home_02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		  3.while 문을 이용하여 Math.random()을 이용하여 , 
		  주사위 숫자 두개가 나오게 하고 , 
		  주사위 합이 5가 아니면 계속 , 
		  합이 5이면 중단 처리되게 하세요 ,
			출력 형식 : @@@, @@@  합 @@@ 
		*/

		int sum  =0;
		int gameIdx01 =0;
		int gameIdx02 =0;
		do{
			gameIdx01 = (int)(Math.random()*5);
			gameIdx02 = (int)(Math.random()*5);
			System.out.println("첫번째 주사위 : "+gameIdx01);
			System.out.println("두번째 주사위 : "+gameIdx02);
			sum = gameIdx01+gameIdx02;
			System.out.println("합:"+sum);
		}while(sum != 5);
			System.out.println("주사위 합이 5 중단 ! ");
	}

}
