package javaexp.a00_basic;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class A07_Util {
	public static void main(String args[]){
		String greet="Hello";
		// 문자열 바꿈 처리 replace
		System.out.println(greet.replace('o', 'i'));
		// substring(인덱스, 순서) : 부분출력..
		System.out.println(greet.substring(2, 4));
		// length() : 문자열의 길이 출력..
		System.out.println(greet.length());
		// Wrapper 클래스
		// primitive data의 객체화 여러 기능 처리를 할수 있게 도와줌..
		// int ==> Integer
		// double ==> Double
		// char ==> Character
		Integer int01 = new Integer("25");
		Double dbl01 = new Double("27.5");
		Character c01 = new Character('c');
		System.out.println(int01.toString());
		System.out.println(dbl01.doubleValue());
		System.out.println(c01.toString());
		/* Random 클래스
		 * 임의의 값을 나타남..
		 * nextInt(100) : 1부터 100 임의의 정수값 출력..
		 class명 위에.. 선언 
		 import java.util.Random;
		 import XXX  : 특정한 기능 클래스가 기본적으로 지원되지 않을 때, 활용. 
		 * */
		Random ran = new Random();
		int num = ran.nextInt(100);
		// 정정합니다 - 0~99
		// uniformly distributed int value between 0 
		// (inclusive) and the specified value (exclusive),
		System.out.println("0~99 임의의 값:"+num);
		float f = ran.nextFloat();
		System.out.println("0.0부터 1.0까지 임의의 값:"+f);
		boolean b = ran.nextBoolean();
		System.out.println("true/false 임의의 값:"+b);
/*	SimpleDateFormat :  날짜를 원하는 형0식으로 출력할 때, 활용된다..*/
/*	SimpleDateFormat("yyyy년  MM월 dd일 HH:mm:ss a")
 * 	yyyy : 년도,  MM: 월, dd: 일   HH:시간  mm:분  ss:초  a:am/pm 처리.
 * */		
		SimpleDateFormat sdf;
		sdf = new SimpleDateFormat("yyyy년  MM월 dd일 HH:mm:ss a");
		// .format() :메서드를 활용해서 현재 날짜에 대한 내용을 처리..
		String date = sdf.format(new Date());
		System.out.println(date);
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}
