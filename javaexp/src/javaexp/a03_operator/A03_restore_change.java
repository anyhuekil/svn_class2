package javaexp.a03_operator;

public class A03_restore_change {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* 증감 연산자 : 데이터를 1씩 증가 또는 감소시키는 연산자를 말한다.
 *    변수++, 변수--, ++변수, --변수
 *    주로, 반복문에서 데이터 증감이 필요할 때, 많이 활용된다.
 * */
		int no=1;
		System.out.println("번호(증가)!!!"+(no++));
		System.out.println("번호(증가)!!!"+(no++));
		System.out.println("번호(증가)!!!"+(no++));
		System.out.println("번호(감소)!!!"+(--no));
		System.out.println("번호(감소)!!!"+(--no));
		System.out.println("번호(감소)!!!"+(--no));
/* 대입연산자 : 변수에 새로운 값을 저장하는 경우에 사용되는 연산자!*/
		int initSaveMoney= 1000;
//		 재귀적 대입연산 : 해당 변수에 덧붙여 데이터를 할당하는 것을 말한다.
//		변수 +=덧붙여할당할 데이터, 변수-=데이터..
		System.out.println(" 저축!!!! (매월 10만원)");
		int monthCnt=1; // 초기 대입연산 처리..
		System.out.println( (monthCnt++)+"번째 달!!총 저축금액:"+
				(initSaveMoney+=100000)+"원");
		System.out.println( (monthCnt++)+"번째 달!!총 저축금액:"+
				(initSaveMoney+=100000)+"원");
		System.out.println( (monthCnt++)+"번째 달!!총 저축금액:"+
				(initSaveMoney+=100000)+"원");
/* 3항 연산자 : 주로 3개의 연산자를 통해서 출력을 바로 할 때, 활용된다..
 *   조건식 ? true처리값:false 처리값
 * */		
		int age=62;
		System.out.println("경로우대 여부 :"+( (age>=65) ? "경로우대":"일반") );
		
		
		
		
	}

}
