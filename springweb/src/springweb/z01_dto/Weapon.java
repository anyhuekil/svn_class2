package springweb.z01_dto;
//springweb.z01_dto.Robot
//springweb.z01_dto.Rocket
//springweb.z01_dto.Laserbim
//

public interface Weapon {
	void attack();
}
// Weapon w1 = new Rocket();
// Weapon w2 = new Laserbim();  
// Weapon을 implments하면 모든 객체는 Weapon에 할당할 수 있다.
class Rocket implements Weapon{
	@Override
	public void attack() {
		System.out.println("로켓포 발사!!");
	}
}
class Laserbim implements Weapon{
	@Override
	public void attack() {
		System.out.println("레이저 빔 발사!!");
	}
	
}
