package javaexp.a10_api;

import java.io.UnsupportedEncodingException;
import java.util.StringTokenizer;

public class A07_String_Method {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String greet="himan! good day1!";
		System.out.println("charAt(index):"+greet.charAt(3));
		// greet.getBytes(): 문자열을 단위 byte[]로 변환
		for(byte bt:greet.getBytes()){
			System.out.println(bt+":"+(char)bt);
		}
		try {
			for(byte bt:greet.getBytes("MS949")){
				// 한글은 2byte이상..깨짐..
				System.out.println(bt+":"+(char)bt);
			}
		} catch (UnsupportedEncodingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		// .indexOf("찾는 문자열")
		System.out.println("indexOf(즐거운):"+greet.indexOf("즐거운"));
		// .length() :문자열의 길이
		System.out.println("length():"+greet.length());
		// .replace : json ==> 변경시, \,  +, ' '
		System.out.println("replace():"+greet.replace("즐거운", "행복한"));
		// .substring() ==> 특정문자열 추출..
		System.out.println("substring():"+greet.substring(3, 5));

		// split("구분자") 문자열을 해당구분자로 구분해서 배열을 list 나타낼때..
		String data="홍길동&김길동&신길동&마길동";
		String names[]=data.split("&");
		for(String name:names){
			System.out.println(name);
		}
		// StringTokenizer(문자열,구분자)
		StringTokenizer st = new StringTokenizer("사과/바나나/딸기","/");
		// countTokens() :구분자를 통해서 나타난 데이터 건수
		int totCnt =st.countTokens(); 
			// nextToken()에 의해 countTokens()변경
		// nextToken() : 구분자를 통해 나타난 각 데이터
		String data01="";
		for(int cnt=1;cnt<=totCnt;cnt++){
			data01=st.nextToken();
			System.out.println(cnt+". "+data01);
		}
//		StringBuffer, StringBuilder 클래스
	//		자바에서 저장하는 String은 내부적으로 문자열을 수정할 없다.
	//		String data="사과";
	//		data+=",바나나";  메모리 새로운 객체 생성.....
	//		String문자열을 loop아니, +로 쓰면 메모리에 문제가 발생..
	//		효과적으로 동적 문자열을 처리할 활용된다.
//		쓰레드에 동기화 적용 여부에 따라 StringBuffer활용
//		StringBuilder 단일 스레드 환경에만 사용되도록 설계
//		append("추가문자열");
//		toString() : 현재 추가된 문자열을 처리..
		StringBuffer sbf = new StringBuffer();
		for(int cnt=0;cnt<10;cnt++){
			sbf.append("연휴전날~~");
		}
		System.out.println("현재 문자열:"+sbf.toString());
		
		
		
		
	}

}
