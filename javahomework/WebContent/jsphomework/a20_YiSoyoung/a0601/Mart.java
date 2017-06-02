package springweb.z01_dto;

import java.util.ArrayList;

public class Mart {
	private String mname;
	private ArrayList<Product> productlist;
	private int recommend;
	public Mart() { }
	public Mart(String mname, ArrayList<Product> productlist, int recommend) {
		super();
		this.mname = mname;
		this.productlist = productlist;
		this.recommend = recommend;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public ArrayList<Product> getProductlist() {
		return productlist;
	}
	public void setProductlist(ArrayList<Product> productlist) {
		this.productlist = productlist;
	}
	public int getRecommend() {
		return recommend;
	}
	public void setRecommend(int recommend) {
		this.recommend = recommend;
	}
	public void selling() {
		/*어서오세요
		@@@마트입니다.
		오늘 추천 물건..
		@@@ , @@@원으로 모십니다*/
		System.out.println("어서오세요\n"+mname+"마트 입니다");
		if(productlist!=null && !productlist.isEmpty()){
			System.out.println("오늘의 추천 물건..");
			System.out.println(productlist.get(recommend).getPname()+", "+productlist.get(recommend).getPrice()+"원으로 모십니다");
		}
	}
}
