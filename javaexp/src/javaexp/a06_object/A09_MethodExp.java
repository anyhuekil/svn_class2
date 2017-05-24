package javaexp.a06_object;

class Mart{
	String prodName;
	int price;
	int cnt;
	int tot;
	Mart(){}
	Mart(String name){
		System.out.println("~~"+name+"마트에 오신 것을 환영합니다!! ");
		System.out.println("### 구매물품 현황 ###");
		System.out.println("물건명\t가격\t갯수\t계");		
	}
	int cart(String prodName, int price, int cnt){
		this.prodName=prodName;
		this.price=price;
		this.cnt=cnt;
		tot=price*cnt;
		return tot;
	}
	void calcu(){
		System.out.print(prodName);
		System.out.print("\t"+ price);
		System.out.print("\t"+cnt);
		System.out.println("\t"+tot);
	}
	
}
public class A09_MethodExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		Mart m = new Mart();
//		System.out.println("### 구매물품 현황 ###");
//		System.out.println("물건명\t가격\t갯수\t계");
		Mart m = new Mart("행복");		
		int sum=m.cart("사과", 3000, 2);
		m.calcu();
		sum+=m.cart("바나나", 4000, 3);
		m.calcu();
		sum+=m.cart("딸기", 12000, 2);
		m.calcu();
		System.out.println("총계 :"+sum+"원");
	}

}
