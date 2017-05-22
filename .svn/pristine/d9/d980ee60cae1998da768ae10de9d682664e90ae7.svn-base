package javaexp_00;

//import java.util.Scanner;
//import java.io.Console;
import java.io.IOException;

//@SuppressWarnings("unused") // java.util.Scanner;을 사용햇더니 생김. 공부할게 많이서 일단은 패스.
public class HW_0412 {

	public static void main(String[] args) throws IOException{
		// TODO Auto-generated method stub
		System.out.println("1. 조건문과 반복문의 종류를 괄호 속에 넣어보세요.");
		System.out.println("답 :조건문 (if) (switch)\n 반복문 (for) (while) (do while)");
		//	1.	 조건문 (if) (switch)
		//		 반복문 (for) (while) (do while)
		
		//	2.	10~ 150까지 5의 배수 총합!
		System.out.println("\n** 엔터키를 입력하시면 다음문제가 출력됩니다.");
		System.in.read();
		System.in.read();
		System.out.println("\n2. for문을 이용하여 10~150까지 정수 중에 5의 배수의 총합을 구하는 코드를 작성하세요.");
		int sumNum = 0;
		for(int idx=10;idx<=150;idx++){
			if(idx%5==0){
			sumNum += idx;
			}
		}
		System.out.println("답 : 10~150중 5배수 총합: "+sumNum);
		
		//	2.2나혼자 문제.
		int startNum = 10;
		int endNum = 150;
/* 1글자만 받아져서 다른방법 모색
		System.out.println("\n2.2 10~ 150 대신에 입력창으로 받겠습니다.");
		System.out.println("첫번째 숫자를 입력해 주세요");
		startNum = (int)System.in.read();
		System.out.println("첫번째 입력한 숫자는 : "+startNum);
		System.out.println("두번째 숫자를 입력해 주세요");
		endNum = (int)System.in.read();
		System.out.println("두번째 입력한 숫자는 : "+endNum);
 */
/*	scaner?를 해봤지만 오류 해결하기에 시간이 너무 걸려서 다음에 해결하기로함.
		Console console = System.console();
		String s = console.readLine();
		int i = Integer.parseInt(console.readLine());

		
		System.out.println("첫번째 숫자를 입력해 주세요");
		startNum = (int)System.in.read();
		System.out.println("첫번째 입력한 숫자는 : "+startNum);
		System.out.println("두번째 숫자를 입력해 주세요");
		endNum = (int)System.in.read();
		System.out.println("두번째 입력한 숫자는 : "+endNum);
*/
		sumNum = 0;
		for(int idx=startNum;idx<=endNum;idx++){
			if(idx%5==0){
			sumNum += idx;
			}
		}
		System.out.println("답 : 10~150중 5배수 총합: "+sumNum);
		
		System.out.println("\n** 엔터키를 입력하시면 다음문제가 출력됩니다.");
		System.in.read();
		System.in.read();
		// 3. while문으로 주사위 두개값이 5가 나오기 전까지 계속 굴리기
		System.out.println("\n3. while문으로 주사위 두개값이 5가 나오기 전까지 계속 굴리기");
		System.out.println("  위 조건 대신에, 주사위 두개 값이 같을경우로 설정함(5,5)가 너무 안나와서...");
		System.out.println("☞  [엔터키]: 주사위 굴리기 [0입력]: 종료 ");
		String dice00 [] ={
				"┏ ━  ━  ━  ┓\n┃                  ┃\n┃       ★        ┃\n┃                  ┃\n┗ ━  ━  ━  ┛ ",
				"┏ ━  ━  ━  ┓\n┃  ★             ┃\n┃                  ┃\n┃             ★  ┃\n┗ ━  ━  ━  ┛ ",
				"┏ ━  ━  ━  ┓\n┃  ★             ┃\n┃       ★        ┃\n┃             ★  ┃\n┗ ━  ━  ━  ┛ ",
				"┏ ━  ━  ━  ┓\n┃  ★       ★  ┃\n┃                  ┃\n┃  ★       ★  ┃\n┗ ━  ━  ━  ┛ ",
				"┏ ━  ━  ━  ┓\n┃  ★       ★  ┃\n┃       ★        ┃\n┃  ★       ★  ┃\n┗ ━  ━  ━  ┛ ",
				"┏ ━  ━  ━  ┓\n┃  ★       ★  ┃\n┃  ★       ★  ┃\n┃  ★       ★  ┃\n┗ ━  ━  ━  ┛ "
		};
		int keyCode;
		while(true){
			keyCode=(int)System.in.read();
			System.in.read();
			if(keyCode==13){
/*				콘솔창에서는 굴러가는 모양 구현못함.;; 
 * 				int noR1 = (int)(Math.random()*6);
 *				int noR2 = (int)(Math.random()*6);
 *				System.out.println(dice00[noR1]);
 *				System.out.println(dice00[noR2]);
 */

				int no1 = (int)(Math.random()*6);
				int no2 = (int)(Math.random()*6);
				System.out.println(dice00[no1]); 
				System.out.println(dice00[no2]);
				if(no1 == no2){ // 5,5가 너무 안나와서 조건 변경
					System.out.println("****** CONGRATULATIONS ******");
					System.out.println("같은 숫자["+(no1+1)+"]가 나와서 게임을 종료합니다.");
					System.out.println("****** CONGRATULATIONS ******");
					break;
				}else{
					System.out.println("주사위1:["+(no1+1)+"], 주사위2:["+(no2+1)+"], 합:["+(no1+no2+2)+"]입니다");
				}
			}else if(keyCode==48){
				System.out.println("[0]이 입력되어 게임을 종료합니다!");
				break;
			}
		}
		System.out.println("\n** 엔터키를 입력하시면 다음문제가 출력됩니다.");
		System.in.read();
		System.in.read();


		System.out.println("\n4. 이중 for문으로 방정식 4x+5y =60인 모든해를 구하라.\nx,y는 10이하 정수.");
		int intX=0;
		int intY=0;
		/*		혼자 실험해봄
		intX=10;
		intY=15;
		for(int idx=0;idx<= (intX>=intY ? intX : intY);idx++){
			System.out.println(idx);
		}
		System.out.println("\n** 엔터키를 입력하시면 다음문제가 출력됩니다.");
		System.in.read();
		System.in.read();
*/
		int cntFunction = 0;
		for(intX=0;intX<=10;intX++){
			for(intY=0;intY<=10;intY++){
				if((4*intX)+(5*intY)==60){
					cntFunction++;
					System.out.println("- "+cntFunction+"번째 해 [ x:"+intX+", y:"+intY+" ]");
				}
			}
		}
		
		System.out.println("총 "+cntFunction+"개의 해가 나왔습니다.\n\n모든 해를 구하였으므로, 프로그램을 종료합니다.");
		System.out.println("\n** 엔터키를 입력하시면 다음문제가 출력됩니다.");
		System.in.read();
		System.in.read();
		
		System.out.println("\n** 모든 문제가 끝났습니다. 감사합니다. **");
// 
		/* 스캐너를 쓰거나, 받아들인 각 키코드 값을 다시 케이스문을 통해 설정해줘야됨.
		 	될지 안될지 모르지만 해보겟음.
		 */
/*		int cnslInput = 0;
		// 함수 소환이 안되서 일단 접어둠.
		void ChangeVal(){
			for (int idx=0;idx<=9;idx++){
				cnslInput = x;
			}
		}
		System.out.println("**** 내맘대로 다시 문제 변경 ****");
		System.out.println("4.2 Ax^2+Bx+C=y 와 Ax=Cy의 해를 구하라. A,B,C은 0~9의 숫자로 입력받는다.");
		int A = 0;
		int B = 0;
		int C = 0;
		cntFunction=0;
*/
		
	}

}
