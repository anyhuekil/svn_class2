package javaexp.a03_operator;

public class A06_argumentExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/* 확인예제 새로운 파일 A06_argumentExp.java
		 *    Favorite Movie
		 *    args ==>  영화명1 상영연
		 *    도 영화명2 상영연도 
		 *    내가 좋아하는 영화
		 *    영화명  상영   지금으로부터
		 *    영화명  @@@  2017-@@@
		 *    영화명  @@@  2017-@@@
		 * */	
		System.out.println("내가 좋아하는 영화");
		System.out.println("영화명\t\t상영\t지금으로부터");
		// 배열 객체 length/단위갯수  ==> 그룹별데이터 건수
		int year=0;
		for(int idx=0;idx<args.length/2;idx++){
			year=Integer.parseInt(args[ (idx*2)+1 ]);
			System.out.println(args[idx*2]+"\t"+year
								+"\t"+(2017-year)+"년 전");
		}
		
		
		
		
	}

}
