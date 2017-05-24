package javaexp.a03_operator;

public class A02_equal_Logic {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* 비교 연산자*/
		int point = 75;
		int passTarget = 60;
		System.out.println(point + "=="+passTarget+"?"+(point==passTarget));
		System.out.println(point + ">"+passTarget+"?"+(point>passTarget));
		System.out.println(point + "<"+passTarget+"?"+(point<passTarget));
		System.out.println(point + ">="+passTarget+"?"+(point>=passTarget));
		System.out.println(point + "<="+passTarget+"?"+(point<=passTarget));
		// != 같지 않을 때..
		System.out.println(point + "!="+passTarget+"?"+(point!=passTarget));
/* 논리 연산자*/
//		&&(and) : 두가지 논리조건에 다 합치될 때, true
//		||(or)  : 두가지 논리조건 중 하나만이라도 합치될 때, true
		int getPoint= 85;
		System.out.println("획득한 점수가 80이상 90미만?"+
				( (getPoint>=80)  &&   (getPoint<90)   )  );
		System.out.println("점수가 유효하지 않을 조건(0미만,100초과)?" +
				 ( (getPoint<0) || (getPoint>100) )      );
	}

}
