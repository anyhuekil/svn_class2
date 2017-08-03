package springweb.b01_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_dto.Duck;
import springweb.z01_dto.Duck2;

public class A10_GenericXml {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext 
			ctx = new GenericXmlApplicationContext("springweb/b01_di/diexp10_auto.xml");
		Duck2 d02=ctx.getBean("duck02", Duck2.class);
		d02.showFly();		
		
	
	}

}
