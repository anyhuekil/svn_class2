package javaexp.a03_operator;

public class A01_basic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/*
산술연산자 처리..
 * */
		int num01=25;
		int num02=75;
		System.out.println(num01 + " + " + num02 + " = " +(num01+num02));
		System.out.println(num01 + " - " + num02 + " = " +(num01-num02));
		System.out.println(num01 + " * " + num02 + " = " +(num01*num02));
		// 정수/정수 ==> 정수값으로 
		// 정수/실수 ==> 연산하는 데이터 값 중 하나가 실수값이어야 실수 처리가 됨.
		//              (실수형)로 데이터를 cast하여 형변환으로 처리가 가능하다
		System.out.println(num01 + " / " + num02 + " = " +(num01/num02));
		System.out.println("실수처리"+num01 + " / " + num02 + " = "
							+(num01/(double)num02));
		System.out.println("실수처리"+num01 + " / " + num02 + " = " 
							+((double)num01/num02));
		System.out.println(num01 + " % " + num02 + " = " +(num01%num02));
		
		
	}

}
