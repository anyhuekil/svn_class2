package javaexp.a04_statement;

public class A05_doubleFor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*	구구단을 통한 2중 for문 처리
 * */		
		// 외부는 단수에 관련된 내용 처리..
		for(int grade=2;grade<=9;grade++){
			// 내부는 cnt 1~9 연산 처리
			System.out.println("###"+grade+"단 ###");
			for(int cnt=1;cnt<=9;cnt++){
				System.out.println(grade + " * "+ cnt + " = "+ (grade*cnt));
			}
		}
/* 라인별 프로세스가 처리된다.. 
 */	
		// 외부는 cnt 1~9 연산 처리 
		for(int cnt=0;cnt<=9;cnt++){
			// 내부는 단수에 관련된 내용 처리..
			for(int grade=2;grade<=9;grade++){
				// 초기 @@ 단 title 처리
				if(cnt==0){
					System.out.print("   "+grade+"단\t\t");
				}else{
					System.out.print(grade + " * "+ cnt + " = "+ (grade*cnt)+"\t");
				}
			}
			// 줄바꿈 처리..
			System.out.println();
		}		
	}

}
