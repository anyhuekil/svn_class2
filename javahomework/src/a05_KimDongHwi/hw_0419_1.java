package a05_KimDongHwi;


class Product{
	String pname;
	int price;
	int ea;
	int totP;
	Product(){}
	Product(String pname){
		System.out.println("~~"+pname+"마트에 오신 것을 환영합니다!! ");
		System.out.println("### 구매물품 현황 ###");
		System.out.println("물건명\t가격\t갯수\t계");	
	}
	
	
	int cart(String pname, int ea, int price){
		this.pname=pname;
		this.price = price;
		this.ea=ea;
		this.totP=0;
		totP=price*ea;
		return totP;
	}
	
	void calc(){
		System.out.print(pname);
		System.out.print("\t"+price);
		System.out.print("\t"+ea);
		System.out.println("\t"+totP);
	}
}

public class hw_0419_1 {

	public static void main(String[] args) {
		 Product p = new Product("애플 ");
		 int sum = p.cart("아이폰", 2,100);
		 p.calc();
		 sum += p.cart("맥  북", 1, 333);
		 p.calc();
		 sum += p.cart("이어폰", 1, 3);
		 p.calc();
	}

}
