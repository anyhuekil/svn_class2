package a04_statedment;

public class HW_exp3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*---------------------------------------------*/
		// 3) while, math.random() 이용하여 주사위 2개 나오고 합이 5가 아니면 계속/5면 중단
		// 출력 @@@,@@@ 합 @@@
		
	
		while(true){
			int dice01 = (int)(Math.random()*6);
			int dice02 = (int)(Math.random()*6);
			int diceSum = dice01 + dice02;
			
			if(diceSum!=5){
				System.out.println(dice01+" + "+dice02+" = "+diceSum);
				System.out.println(" 합이 5가 아니므로 계속 실행 ");
			}else{
				System.out.println(dice01+" + "+dice02+" = "+diceSum);				
				System.out.println(" 합이 5이므로 종료 ");
				break;
			}
		}
	}

}
