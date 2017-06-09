package springweb.b01_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_dto.Duck3;

public class A12_GenericXml {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext 
			ctx = new GenericXmlApplicationContext("springweb/b01_di/"
					+ "diexp12_auto.xml");
		Duck3 d03=ctx.getBean("duck03", Duck3.class);
		d03.showFly();		
		
	
	}

}
