package javaexp.a04_statement;

import java.io.IOException;
public class A08_dowhile {
	public static void main(String[] args) throws IOException {
		char choieMenu = 'Q';
		System.out.print("메뉴 번호를 선택하세요(1:짜장면, 2:짬뽕,3:탕수육,Q:종료) ☞");
		do{
			choieMenu = (char)System.in.read();
			if((int)choieMenu==13||(int)choieMenu==10){
				continue;
			}else if(choieMenu=='1') System.out.println("짜장면 선택");
			else if(choieMenu=='2') System.out.println("짬뽕 선택");
			else if(choieMenu=='3') System.out.println("탕수육 선택");
			else System.out.println("1,2,3,Q 중에 하나만 입력가능해요");
			System.out.print("메뉴 번호를 선택하세요(1:짜장면, 2:짬뽕,3:탕수육,Q:종료) ☞");
		}while(choieMenu!='Q');
		System.out.println("★ ☆ ★ ☆ ★ ☆ ★ ☆ ★ ☆ ★ ☆ ★ ☆ ★");
		System.out.println("  중단합니다. 안녕히 가세요");
		System.out.println("★ ☆ ★ ☆ ★ ☆ ★ ☆ ★ ☆ ★ ☆ ★ ☆ ★");
	}
}
