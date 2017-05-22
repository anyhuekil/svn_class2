package javahomework.a20_YiSoyoung.a0421;
/* 객체와 클래스에 대한 설명을 틀린 것은? ③
 	① 클래스는 객체를 생성하기 위한 설계도와 같은 것이다
 	② new 연산자로 클래스의 생성자를 호출함으로써 객체가 생성된다.
 	③ 하나의 클래스로 하나의 객체만 생성할 수 있다.
 	④ 객체는 클래스의 인스턴스이다
 * 클래스의 구성멤버가 아닌 것은 무엇인가? ④
 	① 필드
 	② 생성자
 	③ 메소드
 	④ 로컬변수
 * 필드에 대한 설명으로 틀린 것은 무엇인가?③
	① 필드는 메소드에서 사용할 수 있다
	② 인스턴스 필드 초기화는 생성자에서 할 수 있다
	③ 필드는 반드시 생성자 선언 전에 선언되어야 한다
	④ 필드는 초기값을 주지 않더라도 기본값으로 자동 초기화된다
 * 메소드 오버로딩에 대한 설명으로 틀린것은 무엇입니까? ②
	① 동일한 이름의 메소드를 여러개 선언하는 것을 말한다.
	② 반드시 리턴 타입이 달라야 한다.
	③ 매개변수의 타입, 수, 순서를 다르게 선언해야 한다.
	④ 매개값의 타입 및 수에 따라 호출될 메소드가 선택된다.
 * final 필드와 상수(static final)에 대한 설명으로 틀린 것은?④
	① final 필드와 상수는 초기값이 저장되면 값을 변경할 수 없다.
	② final 필드와 상수는 생성자에서 초기화될 수 있다
	③ 상수와 이름은 대문자로 작성하는 것이 관례이다
	④ 상수는 객체생성없이 클래스를 통해 사용할 수 있다
 * 접근 제한에 대한 설명으로 틀린 것은 무엇입니까? ③
	① 접근 제한자는 클래스, 필드, 생성자, 메소드의 사용을 제한한다
	② public 접근 제한은 아무런 제한 없이 해당요소를 사용할 수 있게 한다
	③ default 접근 제한은 해당 클래스 내부에서만 사용을 허가한다
	④ 외부에서 접근하지 못하도록 하려면 private 접근 제한을 해야 한다.
 * 다음 클래스에서 해당 멤버가 필드, 생성자, 메소드 중 어떤 것인지 빈칸을 채우세요
 	public class Member{
 		private String name;		←─────(필드)
 		public Member(String name){	←─────(생성자)
 			this.name = name;
 		}
 		public void setName(String name){←─────(메소드)
 			this.name = name
 		}
 	}
 * 은혜 계좌 객체인 Account 객체는 잔고(balance) 필드를 가지고 있다. balance 필드는
 * 음수값이 될 수 없고, 최대 백만원까지만 저장할 수 있다. 외분에서 balance 필드를 마음대로 
 * 변경하지 못하도록 하고, 0 <=balance<=1,000,000,000 범위의 값만 가질 수 있도록 
 * Account 클래스를 작성해 보세요
 	- setter와 getter이용
 	- 0rhk 1,000,000 은 MIN_BALANCE, MAX_BALANCE상수를 선언해서 사용
 	- setter매개값이 음수이거나 백만원을 초과하면 현재 balance값 유지
 * */
class Account{
	private final int MIN_BALANCE = 0;
	private final int MAX_BALANCE = 1000000000; // 짝꿍 은혜씨가 10억으로 해달라 해서 살짝 바꿨습니다
	private String accountNo;
	private String name;
	private int balance;
	public Account(String accountNo, String name) {
		this.accountNo = accountNo;
		this.name = name;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		if(balance<=MAX_BALANCE && balance>=MIN_BALANCE){			
			this.balance = balance;
		}else{
			System.out.println(MIN_BALANCE+"이상 "+MAX_BALANCE+"이하 되는 계좌입니다");
		}
	}
	public void deposit(int money){ // 예금 - MAX_BALANCE 확인
		if(balance+money>MAX_BALANCE){
			System.out.println(MAX_BALANCE+"이상이 되면 안되는 계좌예요");
		}else{
			balance += money;
			System.out.println("입금완료(현잔고 : "+balance+")");
		}
	}
	public void withdraw(int money){ // 인출금 return
		if(balance>=money){
			balance -= money;
			System.out.println("출금완료(현잔고 : "+balance+")");
		}else{
			System.out.println("잔액이 부족하여 출금안되요.");
		}
	}
}
public class Homework0421_2 {
	public static void main(String[] args) {
		Account a1 = new Account("11-101-111", "윤은혜");
		a1.deposit(700000000);
		a1.deposit(200000000);
		a1.withdraw(990000000);
		a1.deposit(99999999);
	}
}
