package springweb.z01_dto;

import java.util.ArrayList;

// springweb.z01_dto.Mart
public class Mart {
	private String name;
	private Product product;
	private ArrayList<Product> productList;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	
	public ArrayList<Product> getProductList() {
		return productList;
	}
	public void setProductList(ArrayList<Product> productList) {
		this.productList = productList;
	}
	public void selling(){
		System.out.println("어서오세요!!! "+name+"마트 입니다.");
		if(product!=null){
			System.out.println("오늘의 추천 물건");
			System.out.println(product.getPname()+", "+
					product.getPrice()+"원으로 모십니다!!");
		}
		System.out.println("구매물건!!");
		for(Product prod:productList){
			System.out.print(prod.getPname()+"\t");
			System.out.print(prod.getPrice()+"\n");
		}
		
		
	}
}
