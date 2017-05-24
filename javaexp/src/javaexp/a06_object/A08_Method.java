package javaexp.a06_object;

class Calculator{
	int num01;
	int num02;
	int sum;
	char cal;// 연산자
	
	int plus(int num01, int num02){
		this.num01=num01;
		this.num02=num02;
		cal='+';
		sum =num01+num02;
		return sum;
	}	
	// returntype  메서드명(입력값1, 입력값2)
	int minus(int num01, int num02){
		this.num01=num01;
		this.num02=num02;		
		cal='-';
		sum=num01-num02;
		return sum;
	}
	int multi(int num01, int num02){
		this.num01=num01;
		this.num02=num02;		
		cal='*';
		sum=num01*num02;
		return sum;
	}
	int div(int num01, int num02){
		this.num01=num01;
		this.num02=num02;		
		cal='/';
		sum=num01/num02;
		return sum;
	}
	// 출력처리 메서드 구현
	void print(){
		System.out.println(num01+ " "+cal+" "+num02+" = "+sum);
	}

}

public class A08_Method {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Calculator c1 = new Calculator();
		int tot=c1.plus(5,5);
		c1.print();
		tot+=c1.minus(7,2);
		c1.print();
		System.out.println("총 계산값:"+tot);
	}

}
