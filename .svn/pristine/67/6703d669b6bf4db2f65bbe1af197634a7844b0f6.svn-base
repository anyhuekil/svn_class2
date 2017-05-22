package javaexp.a08_objectdup;
/* Button 클릭했을 때, 이벤트 처리하는 중첩 인터페이스
 * 활용..
 * */
class Button{
	// 인터페이스 타입 필드..
	OnClickListener listener;
	
	// 외부에서 다양하게 처리하는 실제객체를 받아들일 수 있게
	// 메서드 정의..
	void setOnClickListener(OnClickListener listener){
		this.listener = listener;
	}
	void touch(){
		if(listener!=null){
			listener.onClick();
		}else{
			System.out.println("리스너에 실제 객체 할당되지 않음!!");
		}
	}
	
	// Button 클래스에 종속된 중첩 인터페이스 정의
	interface OnClickListener{
		// 추상메서드 선언..
		void onClick();
	}
}
// 구현 클래스 정의..OnClickListener를 implements한...
//  버튼을 클릭했을 때, 전화를 걸어 주는 클래스..
//                    메시지를 보내 주는 클래스.
// 중첩인터페이스는 클래명.인터페이스명..Button.OnClickListener
class CallListener implements Button.OnClickListener{

	@Override  // Button.OnClickListener에 onClick()추상메서드가
	// 정의되어 있기 때문에, 반드시 implements하는 순간 재정의 하여한다.
	public void onClick() {
		// TODO Auto-generated method stub
		System.out.println("전화를 걸다!!");
	}	
}
// 메세지 보내주는 클래스..
class MessageListener implements Button.OnClickListener{
	@Override
	public void onClick() {
		// TODO Auto-generated method stub
		System.out.println("메시지를 보냅니다.");
	}
}
class MusicStartListener implements Button.OnClickListener{
	@Override
	public void onClick() {
		// TODO Auto-generated method stub
		System.out.println("음악이 켜집니다!!");
	}
}
public class A02_dupInterface {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 버튼 클래스 생성.
		Button btn01 = new Button();
		btn01.touch(); // Listener 객체가 할당되지 않았기에 
		// listener 객체 할당관련 메시지 표시.. null.
		// void setOnClickListener(OnClickListener listener)
		// 인터페이스에 실제 객체를 할당..
		// 동일: OnClickListener listener = new CallListener();
		btn01.setOnClickListener(new CallListener());
		btn01.touch();
		btn01.setOnClickListener(new MessageListener());
		btn01.touch();
		btn01.setOnClickListener(new MusicStartListener());
		btn01.touch();		
	}

}
