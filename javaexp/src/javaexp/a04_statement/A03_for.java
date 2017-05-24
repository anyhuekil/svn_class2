package javaexp.a04_statement;

public class A03_for {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// for을 활용한 예제..
		// 15 ~ 50 출력..
		for(int cnt=15;cnt<=50;cnt++){
			System.out.println("번호:"+cnt);
		}
		// 5개 단위로 tab  및 줄바꿈 처리..	
		for(int cnt=15;cnt<=50;cnt++){
			// print() 줄바꿈 없음.. \t : 탭, \n : 줄바꿈처리..
			System.out.print(cnt);
			if(cnt%5==0){
				// println() : 줄바꿈
				System.out.println();
			}else{
				System.out.print("\t");
			}
		}	
		// for문을 통한 데이터 연산 처리..
		// 1~100까지 데이터를 합산하세요!!
		// 합산할 변수 선언
		int sum=0;  // 누적처리할 변수+=추가할 데이터;
		for(int cnt=1;cnt<=100;cnt++){
			System.out.print(cnt);
			if(cnt!=100){
				System.out.print(" + ");
			}
			sum+=cnt; // 데이터 누적처리..
		}
		System.out.println(" = "+ sum);
		String[] foods={"사과","짜장면","된장찌개"};
		// 배열명[index번호]  idx=0;부터시작
		// 배열명.length : 배열의 크기 =  index마지막번호 +1
		// number(1~ ) = index +1
		for(int idx=0;idx<foods.length;idx++){
			System.out.println((idx+1)+")"+ foods[idx]);
		}
		//  for(단위변수/객체 : 배열객체 ){
		//      해당 배열객체가 있을 때까지  단위 변수나 객체 할당
		for(String food : foods){
			System.out.println("배열 for2 데이터:"+food);
		}
/*	확
 
 */		
		
		
	}

}
