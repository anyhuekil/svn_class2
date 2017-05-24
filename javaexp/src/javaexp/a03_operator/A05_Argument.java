package javaexp.a03_operator;

public class A05_Argument {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("입력된값 1:"+args[0]);
		System.out.println("입력된값 2:"+args[1]);
		System.out.println("입력된값 3:"+args[2]);
//		연산처리를 위해서 변경처리..
//		Integer.parseInt("정수형문자열)  사과           5        바나나       2
		//                             args[0] args[1] args[2] args[3]
		String fruit1 = args[0];
		String fruit2 = args[2];
		int fruit1Cnt = Integer.parseInt(args[1]);
		int fruit2Cnt = Integer.parseInt(args[3]);
		System.out.println("과일 구매내역!!!");
		System.out.println(fruit1+"\t"+fruit1Cnt+"\t"+(fruit1Cnt*3000));
		System.out.println(fruit2+"\t"+fruit2Cnt+"\t"+(fruit2Cnt*4000));
	
		
	}

}
