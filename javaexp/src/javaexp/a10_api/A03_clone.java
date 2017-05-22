package javaexp.a10_api;
// 복제할 수 있는 인터페이스 추가.
class Friend implements Cloneable{
	private String name;
	public Friend(String name) {
		this.name = name;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Friend getFriend(){
		Friend cloned=null;	
		try {
			cloned=(Friend)clone();
		// 복제할 때는, 필수 예외 처리 필요	
		} catch (CloneNotSupportedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return cloned;
	}
}
public class A03_clone {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Friend f1 = new Friend("박마리");
		System.out.println("f1의 이름:"+f1.getName());	
		Friend f2 = f1;
		f2.setName("김신영");
		System.out.println("f2의 이름:"+f2.getName());
		System.out.println("f1의 이름:"+f1.getName());
		Friend f3 = f1.getFriend(); 
		System.out.println("f3의 초기이름:"+f3.getName());
		// 복제된 새로운 Friend객체 생성
		f3.setName("오영심");
		System.out.println("f3의 이름:"+f3.getName());
		System.out.println("f1의 이름:"+f1.getName());
	}

}
