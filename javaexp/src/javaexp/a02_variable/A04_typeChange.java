package javaexp.a02_variable;

public class A04_typeChange {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* type 변환*/
//		1. 자동 type  변환 : 작은데이터type ==> 큰데이터type
//		   큰데이터type 변수명 = 작은 데이터; promote
		int weight = 67;
		double weightDbl = weight;
		System.out.println("몸무게는(실수로변환) ?"+weightDbl);
//		2. 강제 type 변환 : 큰데이터type  => 작은 데이터 type
//			데이터 유실가져옮, casting 처리..(작은데이터)
//			작은데이터 type 변수 = (작은dataType)큰데이터;
//		  1) short + short 연산을 하는 순간 데이터type은 int로 변환
		short num01 = 27;
		short num02 = 25;
		short sum = (short)(num01+num02);
//		  2) 실수형을 정수형 데이터 type으로 할당할 때, 정수형으로 casting
		double height= 175.4;
		int heightInt = (int)height;
//		3. 문자형 type ==> 숫자
//		  1) 정수형문자를 ==> 정수로 변환할 때, Integer.parseInt("정수형문자");
		int inputInt = Integer.parseInt("26"); 
		// 전환하지 않으면 연산 결과 "2610"
		System.out.println("입력된 정수데이터에서 연산+10:"+(inputInt+10));
//		  2) 실수형문자를 ==> 실수로 변활할 때, Double.parseDouble("실수형문자");
		double inputDbl = Double.parseDouble("3.14");
		System.out.println("입력된 실수데이터에서 +12.5:"+(inputDbl+12.5));
//  변수라는 말은 궁극적으로 초기에 데이터를 할당하더라도, 데이터 type만 같으면
//		다른 데이터를 할당 할 수 있는 것을 말한다.
//	반대되는 개념은 상수는 	초기에 데이터를 할당하면 변경되지 않는 것을 말한다.
//		final 데이터type 상수명(대문자) = 초기값할당.
		final int CODE_VAL = 25;
//		CODE_VAL=27; // 다른 데이터할당 시, 에러발생
//	리터럴(literal)이란 ? 소스코드내에서 직접 입력되는 값을 말한다.
//		데이터type 변수(상수)명 = 데이터(리터럴);
//		데이터의 종류에 따라서 정수리터럴, 실수리터럴, 문자리터럴, 논리 리터럴
        int age =27; // 27을 정수리터럴이라고 함.
        String name="하이맨"; // "하이맨" 문자열리터럴
//      상수과 같은 개념으로 활용되지만, 상수는 할당되면 변경되지 않는 것이기에
//      구분하여 리터럴 개념을 활용된다.
		
		
		
	}

}
