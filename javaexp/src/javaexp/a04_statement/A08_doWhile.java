package javaexp.a04_statement;

import java.io.IOException;

public class A08_doWhile {

	public static void main(String[] args) throws IOException {
		// TODO Auto-generated method stub
/*
	do{
		첫번째 또는 반복할 구문 처리
	}while(반복조건);
 * */
		char choieMenu='Q';
		String choMenu="";
		System.out.println("메뉴를 선택하세요!(번호입력)");
		System.out.println("1) 짜장면");
		System.out.println("2) 짬뽕");
		System.out.println("3) 탕수육");
		System.out.println("종료하실려면 Q를 입력!!");		
		do{

			choieMenu=(char)System.in.read();
			if(choieMenu=='1') choMenu+="짜장면 선택!!\n";
			if(choieMenu=='2') choMenu+="짬뽕 선택!!\n";
			if(choieMenu=='3') choMenu+="탕수육 선택!!\n";;
			
		}while(choieMenu!='Q');
			System.out.println("주문된 내용");
			System.out.println(choMenu);
			System.out.println("주문 완료!!!");
		}

}
