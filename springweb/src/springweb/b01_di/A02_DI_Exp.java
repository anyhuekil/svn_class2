package springweb.b01_di;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

import springweb.z01_dto.Person;
import springweb.z01_dto.Weather;

public class A02_DI_Exp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Resource rs = new ClassPathResource("springweb/b01_di/diexp02.xml");
		BeanFactory bean = new XmlBeanFactory(rs);
		Weather we = (Weather)bean.getBean("we");
		System.out.println("날짜:"+we.getDate());
		System.out.println("지역:"+we.getLocation());
		System.out.println("정보:"+we.getInfo());
		
	}

}
