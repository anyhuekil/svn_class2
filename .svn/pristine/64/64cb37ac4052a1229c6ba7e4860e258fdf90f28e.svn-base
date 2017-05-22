package z00_exp;

class Bank{
	String id;
	int inputM; 
	int outputM;
	int cntM;
	
	Bank(){}
	Bank(String id){
		System.out.println("##"+id+"은행입니다##");
		System.out.println("#### 통장 거래내역 ####");
		System.out.println("거래자\t입금\t출금\t잔액");
	}
	
	int calcM(String id, int inputM, int outputM){
		this.id = id;
		this.inputM = inputM;
		this.outputM = outputM;
		this.cntM = cntM;
		cntM = cntM + inputM - outputM;
		return cntM;
	}
	
	void calcP(){
		System.out.print(id);
		System.out.print("\t"+inputM);
		System.out.print("\t"+outputM);
		System.out.println("\t"+cntM);
	}
	
	
	
}

public class hw_0419_2 {

	public static void main(String[] args) {
		Bank b = new Bank("기업");
		int sum = b.calcM("kdh", 1000, 0);
		b.calcP();
		sum += b.calcM("kdh", 0, 5000);
		b.calcP();
		sum += b.calcM("kdh", 100000, 0);
		b.calcP();
	}
	
}


