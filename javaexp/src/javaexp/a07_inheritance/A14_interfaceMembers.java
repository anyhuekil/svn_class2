package javaexp.a07_inheritance;

// 인터페이스 선언
interface RemoteControl{
	// 필드 ==> 상수 [public static final] 타입 상수명 = 값;
	// 상수는 일반적으로 대문자, _(언더바) 로 구성
	int MAX_VOLUME=10;
	int MIN_VOLUME=0;
	// 추상메서드 선언 [abstract]
	public void turnOn(); 
	// ; body가 없는 것은 상속(implements)받은 클래스에서
	// 재정의(overriding)를 목적으로 하기 때문에.
	public void turnOff();
	public void setVolume(int volumn);
	/* java 8 부터 지원 */
	// 디폴트 메소드 : 상속(implements)
	// 받는 하위 클래스에서 공통으로 사용 가능
	default void setMute(boolean mute){
		// 실제 내용을 구현 철..
		if(mute){
			System.out.println("무음 처리합니다.");
		}else{
			System.out.println("무음 해제합니다!!");
		}
	}
	// 정적 메소드 [public] static 리턴타입 메소드명(매개변수...)
	static void changeBattery(){
		System.out.println("건전지를 교환합니다~~");
	}
}
// 실제 implements한 클래스 구현
// class 구현할 실제클래스명 implments 인터페이스명{}
class Television implements RemoteControl{
	// 필드로 volume 선언..
	private int volume;
	@Override
	public void turnOn() {
		// TODO Auto-generated method stub
		System.out.println("TV를 켜다~~");
	}
	@Override
	public void turnOff() {
		// TODO Auto-generated method stub
		System.out.println("TV를 끄다~~");
	}

	@Override
	public void setVolume(int volumn) {
		// TODO Auto-generated method stub
		// 입력된 volume 값이 최고치보다 크면..
		if( volumn >RemoteControl.MAX_VOLUME){
			// 필드(volumn)값을 최고치로 설정
			this.volume=RemoteControl.MAX_VOLUME;
		}else if(volumn < RemoteControl.MIN_VOLUME){
			// 필드(volumn)값을 최저치로 설정
			this.volume=RemoteControl.MIN_VOLUME;
		}else{
			// 범위에서 벗어나지 않으면 입력값으로 필드값할당
			this.volume=volumn;
		}		
		System.out.println("현재 volumn은 "+this.volume);
		
	}}
class Audio implements RemoteControl{
	private int volume;
	@Override
	public void turnOn() {
		System.out.println("오디오를 켜다~~");
	}
	@Override
	public void turnOff() {
		// TODO Auto-generated method stub
		System.out.println("오디오를 끄다~~");
	}
	@Override
	public void setVolume(int volumn) {
		// TODO Auto-generated method stub
		if( volumn >RemoteControl.MAX_VOLUME){
			this.volume=RemoteControl.MAX_VOLUME;
		}else if(volumn < RemoteControl.MIN_VOLUME){
			this.volume=RemoteControl.MIN_VOLUME;
		}else{
			this.volume=volumn;
		}		
		System.out.println("현재 오디오의 volumn은 "+this.volume);
		
	}}
public class A14_interfaceMembers {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// static 이기에 객체 생성없이도 활용할 수 있다.
		System.out.println("최대볼륨크기:"+RemoteControl.MAX_VOLUME);
		// staic 메서드 객체 생성 없이 사용가능.
		RemoteControl.changeBattery();
		
		Television tv01 = new Television();
		tv01.turnOn();
		tv01.setVolume(15);
		tv01.setMute(true);
		tv01.turnOff();
		Audio ad01 = new Audio();
		ad01.turnOn();
		ad01.setVolume(8);
		ad01.setMute(true);
		ad01.turnOff();		
	}

}
