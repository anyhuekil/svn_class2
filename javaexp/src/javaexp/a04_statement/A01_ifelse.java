package javaexp.a04_statement;

public class A01_ifelse {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 조건문에 대한 처리..
		// 0, 1, 2
		// 가위 바위 보  출력 되는 내용..
		// (int) casting!!
		// Math.random()*3 실수..
		int gameIdx = (int)(Math.random()*3);  // 범위가 0~2까지만..
		// 해당 조건
		if( gameIdx==0 ){
			System.out.println("가위");
		// 위의 조건을 제외하고 1 일때..	
		}else if(gameIdx==1){
			System.out.println("바위");
		}else{
			System.out.println("보");
		}
	}

}
