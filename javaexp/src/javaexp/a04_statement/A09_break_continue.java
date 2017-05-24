package javaexp.a04_statement;

public class A09_break_continue {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// break 해당 블럭({}) 프로세스 자체를 중단시키는 것.
		System.out.println("## 사과먹는 곰돌이###");
		for(int cnt=1;cnt<=10;cnt++){
			System.out.println("곰돌이가 사과를 "+cnt+"개 먹었다.");
			if(cnt==5){
				System.out.println("5개 먹는 순간!! 이제 그만!!");
				break;
			}
		}
		System.out.println("break 예제 완료!!!");
		// continue 해당 블럭({})에 특정 프로세스만 pass 처리..
		System.out.println("### 떡먹는 병만이 ###");
		for(int cnt=1; cnt<=10;cnt++){
			 if(cnt==6){
				 System.out.println("6번째 떡은 신지에게 빼앗김!!!");
				 continue;
			 }
			 System.out.println("병만이 "+ cnt+"번째 떡을 먹다!!!");
		}
		System.out.println("continue와 병만이 예제 완료!!");
		
		
	}

}
