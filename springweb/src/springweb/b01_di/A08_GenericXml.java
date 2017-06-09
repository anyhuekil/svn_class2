package springweb.b01_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_dto.Man;
import springweb.z01_dto.Mart;

public class A08_GenericXml {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext 
			ctx = new GenericXmlApplicationContext("springweb/b01_di/diexp08_auto.xml");
		Mart mart=ctx.getBean("mart", Mart.class);
		mart.selling();
	}

}
