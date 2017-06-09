package springweb.z01_dto;
// springweb.z01_dto.Man
public class Man {
	private Woman woman;
	private String name;
	private String loc;
	
	public Woman getWoman() {
		return woman;
	}
//	autowire 속성에 bean의 id가 woman이 있을 때 할당..
	public void setWoman(Woman woman) {
		this.woman = woman;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLoc() {
		return loc;
	}
	public void setLoc(String loc) {
		this.loc = loc;
	}
	public void show(){
		System.out.println("이름:"+name);
		System.out.println("사는 곳:"+loc);
		if(woman!=null){
			System.out.println("그녀는 !!!!");
			System.out.println("이름:"+woman.getName());
			System.out.println("나이:"+woman.getAge());
			System.out.println("사는곳:"+woman.getLoc());
		}
	}
	
}
