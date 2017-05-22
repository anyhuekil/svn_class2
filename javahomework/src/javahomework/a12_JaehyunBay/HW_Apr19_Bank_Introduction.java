package javahomework.a12_JaehyunBay;
/*
은행 - 1단계
계좌
	field: 계좌명, (총액)
	생성자(계좌명 입력)
	input(입금액)
		@@@님 @@@원 입금하셧습니다.(현잔액@@@)
	output(출금액)
		@@@님 @@@원 출금하셧습니다.(현잔액@@@)
*/
class Bank{
	String owner;
	String category;
	int input;
	int currValue;
	Bank(String owner){
		this.owner = owner;
	}
	int calc(String category, int input){
		this.category = category;
		this.input = input;
		if(category.equals("withdraw")){
			currValue -= input;
		}
		else if(category.equals("deposit"))
			currValue += input;
		return currValue;
	}
	void printOut(){
		System.out.println(owner+"님\t" + category+" "+input+"원\t 남은잔액: " + currValue+ "원");
	}
	
}

/*
 자기소개 - 1단계
	field: 이름, 사는곳, 나이
	생성자(이름입력)
	inputData(사는곳, 나이)
	introMyself(): 출력처리.
	내이름은 @@이고, 나이는 @@이며, 사는곳은 @@@입니다.

*/

class Introduction{
	String myName;
	String myLoc;
	int age;
	Introduction(String myName){
		this.myName = myName;
	}
	
	String inputData(String myLoc, int age){
		this.myLoc = myLoc;
		this.age = age;
		return myLoc+ age;
	}
	
	void introMyself(){
		System.out.println(myName + "입니다. "+ myLoc +"지역에서 살고 " + age + "살 입니다.");
	}
}




public class HW_Apr19_Bank_Introduction{

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	
		Bank b1 = new Bank("jb");  //String owner
		b1.calc("deposit",5000);  //String category,int input
		b1.printOut();
		b1.calc("withdraw",2000);  
		b1.printOut();
		b1.calc("deposit",4000);  
		b1.printOut();
		b1.calc("deposit",5000);  
		b1.printOut();
		Bank b2 = new Bank("jj");  //String owner
		b2.calc("withdraw",5000);  //String category,int input
		b2.printOut();
		b2.calc("withdraw",2000);  
		b2.printOut();
		b2.calc("deposit",4000);  
		b2.printOut();
		b2.calc("deposit",5000);  
		b2.printOut();
		
		
		Introduction i01 = new Introduction("홍길동");
		i01.inputData("도보옹", 28);
		i01.introMyself();
		Introduction i02 = new Introduction("금길동");
		i02.inputData("강북", 27);
		i02.introMyself();
		Introduction i03 = new Introduction("우길동");
		i03.inputData("화성", 22);
		i03.introMyself();
	}

}
