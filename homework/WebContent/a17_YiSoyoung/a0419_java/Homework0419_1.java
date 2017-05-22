package javaexp.a06_object;
/* 확인예제
 * Class는 좋아하는 연예인
 * 	이름, 성별, 분야, 생성자들
 * */
class Entertainer{
	private static int cnt=0;
	private int no;
	private String name;
	private char gender;
	private String kind;
	public Entertainer(){
		this("박미경", 'f',"가수");
	}
	public Entertainer(String name){
		this(name, 'f',"가수");
	}
	public Entertainer(String name, char gender){
		this(name, gender, "가수");
	}
	public Entertainer(String name, char gender, String kind){
		no = ++cnt;
		this.name = name;
		this.gender = gender;
		this.kind = kind;
	}
	@Override
	public String toString() {
		String temp;
		temp = no+". "+name+"\t\t"+gender+"\t"+kind;
		return temp;
	}
}
public class Homework0419_1 {
	public static void main(String[] args) {
		Entertainer[] entertainers = new Entertainer[4];
		entertainers[0] = new Entertainer();
		entertainers[1] = new Entertainer("하니");
		entertainers[2] = new Entertainer("김건모");
		entertainers[3] = new Entertainer("정준영",'m',"배우");
		for(Entertainer entertainer: entertainers)
			System.out.println(entertainer);
	}
}
