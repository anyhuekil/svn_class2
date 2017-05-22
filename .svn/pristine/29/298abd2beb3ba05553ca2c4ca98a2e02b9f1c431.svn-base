package javahomework.a18_yoonyoungju;
/*
은행에 가서 ( 2단계)
- Account(계좌계정)
	field명 : 계정명, (입금액,출금액),총잔액,(날짜),(내용)

생성자 : 계정명 입력
생성자 2: 계정명 , 초기 입금액
save(입금액, 내용 , 날짜 )
	-계산처리 
	-return입금된 금액
withdraw( 출금액, 내용 , 날짜)
-계산처리
- return 출금액 금액

withdraw(출금액, 내용, 날짜)
print()
날짜 용돈 [@@@] [@@@@] [@@@@@]
*/
class Account{
	String accountname;
	int inprice;
	int firstinprice;
	int outprice;
	int total;
	String date;
	String remark;

	
	Account(String accountname){
		this.accountname=accountname;
	}
	Account(String accountname, int firstinprice){
		this.accountname=accountname;
		this.firstinprice=firstinprice;
		this.total =firstinprice ;
	}
	int save(int inprice,String remark,String date){
		this.inprice=inprice;
		this.remark = remark;
		this.date = date;
		return this.inprice=inprice;
	}
	int withdraw(int outprice,String remark,String date){
		this.outprice=(-outprice);
		this.remark = remark;
		this.date = date;
		return this.outprice=(-outprice);
	}
	void print(){
		System.out.println(date+ remark+"["+outprice+"] ["+inprice+"] ["+total+"]");
	}
}
public class Method_homwor_lv2{
	public static void main(String[] args) {
			// TODO Auto-generated method stub
		Account a = new Account("윤영주");
			a.total=a.save(12000,"알바비","2017.04.01");
			a.print();
			a.total += a.withdraw(5000,"편의점","2017.04.11");
			a.print();
			a.total += a.save(30000,"용돈","2017.04.20");
			a.print();
	}
}





