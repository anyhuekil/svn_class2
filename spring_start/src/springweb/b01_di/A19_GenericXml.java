package springweb.b01_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_dto.Restaurant;

public class A19_GenericXml {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext 
			ctx = new GenericXmlApplicationContext("springweb/b01_di/diexp19_auto.xml");
		Restaurant res01=ctx.getBean("res01", Restaurant.class);
		res01.eatLunch();

	}

}
