package javaexp.a06_object;
/* 자기소개1단계
 * field : 이름, 사는 곳, 나이
 * 생성자(이름입력)
 * inputData(사는 곳, 나이)
 * introMyself() 내이름은 @@이고 나이는 XX이며 사는곳은 어디입니다
 * */
class MySelfIntro {
	private String name;
	private String address;
	private int age;
	public MySelfIntro() {	}
	public MySelfIntro(String name) {
		this.name = name;
	}
	public void inputData(String address, int age){
		this.address = address;
		this.age = age;
	}
	public void introMyself(){
		System.out.println("내 이름은 "+name+"이고 나이는 "+age+"살이며 사는 곳은 "+address+"입니다.");
	}
}
public class Homework0419_selfintro_1step {
	public static void main(String[] args) {
		MySelfIntro lee = new MySelfIntro("이길동");
		lee.inputData("서울 용산", 25);
		lee.introMyself();
	}
}
