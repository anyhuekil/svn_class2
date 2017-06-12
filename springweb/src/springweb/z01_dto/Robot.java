package springweb.z01_dto;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
// springweb.z01_dto.Robot
//
public class Robot {
	private String kind;
	// 이 Weapon은 조립기에서 할당할 수 있는 
	// type오면 할당처리 하세요.==> Autowired
	// 혹시, 조립기에 해당 객체가 없더라도 에러발생
	// 하지 않도록 해주세요 ==> required=false
	// 할당할 객체가 겹치면 내가 정한 bean의 id값으로
	// 할당해 주세요 ==>Qualifier
	@Autowired(required=false)
	@Qualifier("laserbim")
	private Weapon wp;

	public Robot(String kind) {
		super();
		this.kind = kind;
	}
	public void showAttack(){
		if(wp!=null){
			System.out.println(kind+" 로봇이 ");
			wp.attack();
		}
	}
	
}
