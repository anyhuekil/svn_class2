package javahomework.a25_jujihoon.a0420;

class Account
{
	String accountName;
	int balance;
	String printList;
	
	Account()
	{
		this.accountName = "";		
		this.balance = 0;
		this.printList = "";
	}
	
	Account(String accountName)
	{
		this();
		this.accountName = accountName;
	}
	
	Account(String accountName, int balance)
	{
		this();
		this.accountName = accountName;
		this.balance = balance;
	}
	
	int save(int deposit, String content, String date)
	{
		this.balance += deposit;
		printList += "날짜 : " + date + 
					"	용돈 : " + this.balance + 
					"	계정 : " + this.accountName + 
					"	입금액 : " + deposit + 
					"	내용 : " + content + "\n";
		return this.balance;
	}
	
	int withdraw(int withdraw, String content, String date)
	{
		this.balance -= withdraw;
		printList += "날짜 : " + date + 
					"	용돈 : " + this.balance + 
					"	계정 : " + this.accountName + 
					"	출금액 : " + withdraw + 
					"	내용 : " + content + "\n";
		return this.balance;
	}
	
	void print()
	{
		System.out.println(printList);
	}
}


public class My11_homework {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Account account01 = new Account("홍길동", 10000);
		account01.save(1000, "저금", "2017.04.16");
		account01.withdraw(2000, "점심식대", "2017.04.17");
		account01.print();
	}

}
