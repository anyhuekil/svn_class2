package javahomework.a20_YiSoyoung.a0427;
/* 1단계) MusicStartListener : 음악이 켜지는 리스너 구현 
 * 2단계)
	- Draw
		필드선언..
		OnTouchListener(중첩인터페이스)
			onTouch(); - 추상메서드
		drawing()
	- CircleListener : 동그라미 그려주는 실제클래스
	- TriangleListener : 세모를 그려주는 실제클래스 */
class Draw{
	private OnTouchListener touchListener;
	public void setOnTouchListener(OnTouchListener touchListener) {
		this.touchListener = touchListener;
	}
	public void drawing(){
		if(touchListener!=null)
			touchListener.onTouch();
		else
			System.out.println("리스너도 할당 안 됨");
	}
	interface OnTouchListener{
		public void onTouch();
	}
}
class CircleListener implements Draw.OnTouchListener{
	@Override
	public void onTouch() {
		System.out.println("동그라미를 그려줘요");
		
	}
}
class TriangleListener implements Draw.OnTouchListener{
	@Override
	public void onTouch() {
		System.out.println("삼각형을 그려줘요");
		
	}
}
public class A02_dupInterfaceExp {
	public static void main(String[] args) {
		Draw draw = new Draw();
		CircleListener circleListener = new CircleListener();
		TriangleListener triangleListener = new TriangleListener();
		draw.setOnTouchListener(circleListener);
		draw.drawing();
		draw.setOnTouchListener(triangleListener);
		draw.drawing();
	}
}
