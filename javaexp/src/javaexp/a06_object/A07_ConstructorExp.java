package javaexp.a06_object;

class Entertainer{
	String name;
	String gender;
	String kind;
	Entertainer(String name, String gender, String kind){
		this.name=name;
		this.gender=gender;
		this.kind=kind;
	}
	Entertainer(String name, String gender){
		this(name,gender,"개그맨");
	}	
	Entertainer(String name){
		this(name,"여자","가수");
	}	
	Entertainer(){
		this("caren(cps)","여자","가수");
	}		
}

public class A07_ConstructorExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Entertainer en01 =new Entertainer();
		Entertainer en02 =new Entertainer("김윤아(자우림)");	
		Entertainer en03 =new Entertainer("유재석","남자");	
		Entertainer en04 =new Entertainer("김희애","여자","탈랜트");
		
		System.out.println("== 내가 좋아하는 연예인 ==");
		int num=1;		
		System.out.println((num++)+". "+en01.name+"\t"+en01.gender+"\t"+en01.kind);
		System.out.println((num++)+". "+en02.name+"\t"+en02.gender+"\t"+en02.kind);
		System.out.println((num++)+". "+en03.name+"\t"+en03.gender+"\t"+en03.kind);
		System.out.println((num++)+". "+en04.name+"\t"+en04.gender+"\t"+en04.kind);		
	}

}
