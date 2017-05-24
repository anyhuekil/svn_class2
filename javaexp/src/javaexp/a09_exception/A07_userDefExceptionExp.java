package javaexp.a09_exception;
class ShoppingException extends Exception{

	public ShoppingException() {
	    super("기본 쇼핑예외 객체 호출");
	}

	public ShoppingException(String message) {
		super(message);
	}

	@Override
	public String getMessage() {
		// 메세지 + 생성자를 통해서 받았던 내용 
		return "드디어, 안타까운 현실이군용!! "+super.getMessage();
	}	
}
class Market{
	private String martName;
	private int curMoney;
	public Market(String ... names ){
		martName=names.length==0?"행복마트":names[0];
	}
	public void goShopping(int money){
		curMoney=money;
		System.out.println(martName+"에서 즐거운 쇼핑을 위해 "
				+curMoney+"원을 가지고~~");
	}
	public void buyProduct(int spmoney) throws ShoppingException{
		if(curMoney<spmoney){
			throw new ShoppingException("현금 보유 부족:"
					+(spmoney-curMoney)+"원 필요" );
		}
		curMoney-=spmoney;
		System.out.println(spmoney+"원 지출, 현잔액"+curMoney);
	}
	
}
public class A07_userDefExceptionExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			Market m1 = new Market();
			m1.goShopping(100000);			
			m1.buyProduct(30000);
			m1.buyProduct(20000);
			m1.buyProduct(50000);
			Market m2 = new Market("사치마트");
			m2.goShopping(1000000);			
			m2.buyProduct(300000);
			m2.buyProduct(200000);
			m2.buyProduct(500000);
			m2.buyProduct(600000);				
		} catch (ShoppingException e) {
			// TODO Auto-generated catch block
			System.out.println(e.getMessage());
		}

		
		
	}

}
