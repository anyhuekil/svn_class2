package javaexp.a12_collection;

import java.util.ArrayList;

/*
	ArrayList 확인예제 
	과일가게 ArrayList : sellList
	장보는 사람 ArrayList : buyList
	시나리오
	 
	- 사과, 바나나, 딸기, 오렌지, 수박을 팔고 있습니다. add처리
	- 장보는 사람이 사과와 딸기를 구매했습니다. remove, add처리
	- 과일가게에서 바나나를 사과로 변경헀습니다. set처리
	- 장보는 사람이 사과와 딸기를 다 먹었습니다. remove처리
	- 장보는 사람이 가지고 있는 과일이 없다면 과일가게에서 남은 과일 중 하나를 장보는 사람에게 사은품으로 주기로 했습니다.
*/


class Seller{
	private String sName;
	Seller(String sName){
		this.sName = sName;
		System.out.println("어서오세요!" + this.sName + "입니다! 물건들 너무 싸다!");
	}
	private ArrayList<String> sellList = new ArrayList<String>();
	private int findpId(String pName){
		int found=0;
		for(int seek = 0; seek<sellList.size(); seek++){
			if(sellList.get(seek).equals(pName)){
				found = seek;
			}
		}
		return found;
	}
	
	public void addProduct(String...pNames){
		for(String pName:pNames)
			sellList.add(pName);
	}
	public void changeProduct(String pName, String newpName){
		int pId = findpId(pName);
		sellList.set(pId, newpName);
	}
	public String removeProduct(String...pNames){
		try {
			for(String pName:pNames){
			if(!sellList.contains(pName)){
				//throw new IsEmptyException();
				System.out.println("죄송합니다."+ pName+"라는 물건이 없습니다!");
				int rand01=(int)(Math.random()*sellList.size());
				String reward = sellList.get(rand01);
				System.out.println("대신."+ reward+"으로 보상 해드립니다!");
				return reward;
			}
			int pId = findpId(pName);
			sellList.remove(pId);
			}
		} catch (/*IsEmpty*/Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "";
	}
	public void nowOwn(){
		System.out.println("지금 가지고있는 싱싱한 물건들입니다!!");
		for(int all =0; all<sellList.size(); all++){
			System.out.println( (all+1)+ ". "+ sellList.get(all) );
		}
	}
}

class Buyer{
	Buyer(){}
	private ArrayList<String> buyList = new ArrayList<String>();
	
	private int findpId(String bName){
		int found=0;
		for(int seek = 0; seek<buyList.size(); seek++){
			if(buyList.get(seek).equals(bName)){
				found = seek;
			}
		}
		return found;
	}
	
	public void buyProduct(String...bNames){
		for(String bName:bNames){
			buyList.add(bName);
		}
	}
	public void eatProduct(String...bNames){
		for(String bName:bNames){
			int bId = findpId(bName);
			buyList.remove(bId);
		}
	}
	public void nowOwn(){
		System.out.println("구매자 보유 물건들입니다!!");
		for(int all =0; all<buyList.size(); all++){
			System.out.println( (all+1)+ ". "+ buyList.get(all) );
		}
	}
}

public class A03_HW0509_prac {
	public static void main(String[] args) {
		Seller s01 = new Seller("청물상회");
		//1번. 사과, 바나나, 딸기, 오렌지, 수박을 팔고 있습니다. add처리
		s01.addProduct("사과","바나나","딸기","오렌지","수박");
		s01.nowOwn();
		
		//2번. 장보는 사람이 사과와 딸기를 구매했습니다. remove, add처리
		Buyer b01 = new Buyer();
		b01.buyProduct("사과","딸기");
		s01.removeProduct("사과","딸기");
		s01.nowOwn();
		b01.nowOwn();
		
		//3번. 과일가게에서 바나나를 사과로 변경헀습니다. set처리
		s01.changeProduct("바나나", "사과");
		s01.nowOwn();
		
		//4번. 장보는 사람이 사과와 딸기를 다 먹었습니다. remove처리
		b01.eatProduct("사과","딸기");
		b01.nowOwn();
		
		//5번. 실패!! 과일이 없다면 과일가게에서 남은 과일 중 하나를 장보는 사람에게 사은품
		b01.buyProduct(s01.removeProduct("포도"));
		b01.nowOwn();
	}
}
