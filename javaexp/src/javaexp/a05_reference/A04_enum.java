package javaexp.a05_reference;

public class A04_enum {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Week week01 = Week.MONDAY;
		Week today = Week.MONDAY;
		System.out.println("enum데이터 동일시:"+(week01==today));
		System.out.println(week01.valueOf("MONDAY"));
		System.out.println(Week.MONDAY);
		for(Week w:week01.values()){
			System.out.println(w);
		}
/*   열거형 객체의 메소드들..
 * 	  name(): 해당 문자열 가져온다.
 * */		
		String name=today.name();
		System.out.println("name() 호출:"+name);
//		ordinal() : index값 가져온다.
		today=Week.SUNDAY;
		int ordinalIdx = today.ordinal();
/* public enum Week에 선언 순서대로(0~6)
 * */		
		System.out.println("ordinal() 호출:"+ordinalIdx);
//		valueOf("문자열로 지정한 값")
		Week weekDay=Week.valueOf("SATURDAY");
		System.out.println("valueOf:"+weekDay.name());
//		values() : 열거 타임의 모든 데이터를  배열객체로 가져옮
		Week[] days = Week.values();
		System.out.println("전체 week list 가져옮");
		for(Week day:days){
			System.out.println(day);
		}

		
	}

}
