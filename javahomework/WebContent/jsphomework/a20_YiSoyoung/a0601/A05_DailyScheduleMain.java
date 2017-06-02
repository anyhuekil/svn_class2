package springweb.b01_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_dto.DailySchedule;


/* Schedule
 	- 시간, 내용
 * DailySchedule
 	- 날짜(문자열)
 	- ArrayList<Schedule> schList
 	- showSchedule()
 		@@@월@@일 일과계획
 		6:00 기상
 		7:00 아침
 		8:00 출발
 */
public class A05_DailyScheduleMain {

	public static void main(String[] args) {
		String loc = "springweb/b01_di/diexp5.xml";
		AbstractApplicationContext ctx = 
				new GenericXmlApplicationContext(loc);
		DailySchedule dailySchedule = ctx.getBean("dailySchedule", DailySchedule.class);
		dailySchedule.showSchedule();
	}
}