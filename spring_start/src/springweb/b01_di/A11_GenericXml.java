package springweb.b01_di;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import springweb.z01_dto.BookStore;

public class A11_GenericXml {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		AbstractApplicationContext 
			ctx = new GenericXmlApplicationContext("springweb/b01_di/diexp11_auto.xml");
		BookStore bs=ctx.getBean("bs", BookStore.class);
		bs.displayBook();
		
	
	}

}
