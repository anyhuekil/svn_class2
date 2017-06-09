package springweb.z01_dto;

import org.springframework.beans.factory.annotation.Autowired;

public class Restaurant {
	private String name;
	
	@Autowired
	private Food menu;
	
	public Restaurant(String name) {
		super();
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void eatLunch(){
		System.out.println("오늘 점심은 "+name+"에 가서");
		System.out.println(menu.getMenu()+"를 "+menu.getPrice()+"원으로 먹기로 했다!!");
	}

	
}
