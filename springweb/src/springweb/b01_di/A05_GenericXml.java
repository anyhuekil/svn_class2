package springweb.b01_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_dto.DailySchedule;

public class A05_GenericXml {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext 
			ctx = new GenericXmlApplicationContext("springweb/b01_di/diexp05.xml");
		DailySchedule ds=ctx.getBean("daiySch", DailySchedule.class);
		ds.showSchedule();
	}

}
