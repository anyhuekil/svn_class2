package HW;

public class Homework_0412 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 2. for문을 이용하여 10~150까지 정수 중에 5의 배수의 총합을 구하는 코드를 작성하세요.
		// 3. while문, Math.random()을 이용하여, 주사위 숫자 두 개가 나오게 하고, 주사위 합이 5가 
		//		아니면 계속, 합이 5이면 중단 처리되게 하세요
		// 4. 이중 for문을 이용하여 방정식 4x + 5y = 60인 모든 해를 구하세요. (x, y는 10이하 정수)
		
		one();
		two();
		three();
		four();
	}
	
	public static void one() {
		System.out.println("1) 조건문과 반복문");
		System.out.println("conditional statements : if, switch");
		System.out.println("loop statements : for, while, do-while\n");
	}
	
	public static void two() {
		int sum = 0;
		
		for(int i = 10; i <= 150; i++) {
			sum += (i % 5 == 0) ? i : 0; 
		}
		
		System.out.println("2) 10~150 사이의 정수중 5의 배수의 합\nSum is "+sum + "\n");
	}
	
	public static void three() {
		int dice01, dice02;

		do {
			dice01 = (int)(Math.random()*6) + 1;
			dice02 = (int)(Math.random()*6) + 1;
		} while((dice01 + dice02) != 5);
		
		System.out.println("3) 주사위의 합이 5\n"
				+dice01+" + "+dice02+" = "+(dice01+dice02) + "\n");
	}
	
	public static void four() {
		String pairs = "";
		
		for(int x = 0; x <= 10; x++) {
			for(int y = 0; y <=10; y++) {
				if(4*x+5*y == 60)
					pairs += "("+x+", "+y+")\n";
			}
		}
		
		System.out.println("4) 10이하의 양의 정수 x, y에 대해 4x + 5y = 60를 만족하는 순서쌍\n"+pairs + "\n");
	}

}
