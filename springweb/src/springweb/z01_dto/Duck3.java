package springweb.z01_dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Duck3 {
	private String type;
//	매핑되는 클래스가 하나라도 있게 처리하기 위해서
	@Autowired(required=false)
	@Qualifier("flyway02")
	private Flyway fly;
	/*
	Flyway f01 = new LakeFlying();
	Flyway f02 = new SeaFlying();
	 * 
	 * */	
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public void showFly(){
		System.out.println(type + "오리가");
		if(fly!=null){
			fly.fly();
		}

	}
}
