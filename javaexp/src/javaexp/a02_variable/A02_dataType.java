package javaexp.a02_variable;

public class A02_dataType {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//	정수형 data type
//		byte(1byte) -128 ~ 127
		byte age= 25; // byte데이터로 25를 할당.
//		age = 129; byte데이터 범위를 넘어서는 할당 불가.
//		short, [int], long, char
		char codeVal=66; //char 2byte로 데이터 할당..0~65535
		System.out.println("나이는 "+age);
		System.out.println("코드값"+codeVal);
		codeVal='한'; // char는 ''로 한 자만 할당
		System.out.println((int)codeVal);
// 실수형 date type
//		float(4byte)  : 부호화비트(1bit) + 지수(8bits) + 가수(23bits) =32bits 
//		[double(8byte)] : 부호(1bit) + 지수(11bits) + 가수(52bits) = 64bits
		float degree = 25.2F;// float 변수 = 데이터F;
		double height= 175.2; // 실수형의 default값이기에 할당 가능
		System.out.println("온도는 "+degree+"도");
		System.out.println("키는 "+height+"cm");
//	논리형 date type
//		boolean 1byte(8bits) 표현.. true/false
		boolean isGo = true;
		if( isGo ){
			System.out.println(" go!! go!!!");
		}else{
			System.out.println(" stop!! it's enough!!");
		}
		
		
		
//		
		
		
	}

}
