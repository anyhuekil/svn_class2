package javaexp.a05_reference;

import java.util.Calendar;

public class A05_enumExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*오늘 요일 관련 enum 선언..*/
		Week today=null; // 결정 되지 않은 Week enum
		// 오늘 날짜와 요일 관련 index값 가져오기..
		// Calendar.getInstance();
		Calendar cal = Calendar.getInstance();
		// Calendar.DAY_OF_WEEK:현재 요일에 관련된 정보 (1~7-일월화...)
		int week=cal.get(Calendar.DAY_OF_WEEK);
		System.out.println("전체 요일 갯수:"+Calendar.DAY_OF_WEEK);
		System.out.println("오늘 요일 index값:"+week);		
		switch(week){
			case 1: today= Week.SUNDAY; break;
			case 2: today= Week.MONDAY; break;
			case 3: today= Week.TUESDAY; break;
			case 4: today= Week.WEDNESDAY; break;
			case 5: today= Week.THURSDAY; break;
			case 6: today= Week.FRIDAY; break;
			case 7: today= Week.SATURDAY; break;
		}
		System.out.println("오늘의 요일은?"+today);
		if(today==Week.SUNDAY){
			System.out.println("등산이나 취미 생활을 한다!!");
		}else{
			System.out.println("열심히 공부한다!!");
		}
		
		
	}

}
