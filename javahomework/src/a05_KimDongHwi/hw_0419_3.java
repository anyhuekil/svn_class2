package a05_KimDongHwi;

class Intro{
	String name;
	String loc;
	int age;
	
	Intro(){}
	Intro(String name){
		this.name=name;
	}
	
	void inputData(String loc, int age){
		this.loc = loc;
		this.age = age;
	}

    void introMyself() {
		System.out.println("내 이름은 "+name+"이고, 나이는 "+age+"살 이고, 사는 곳은 "+loc+"입니다.");
	}
}

public class hw_0419_3 {

	public static void main(String[] args) {
		Intro n =new Intro("kdh");
		n.inputData("seoul",29);
		n.introMyself();
				
	
	}

}
