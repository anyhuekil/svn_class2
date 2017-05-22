package javaexp.a04_statement;

public class Homework0412_1 {
	public static void main(String[] args) {
		/* 물품 list 배열을 만들고 가격 list배열도 만들고
		 * 각각 for 두번째 형식을 이용하여 출력	
		 * 마지막 for 첫번째 형식을 이용해서 통합 출력*/
		String[] products = {"라면","파","소고기","과자"};
		int[] prices = {5000,2000,22000,4000};
		System.out.println("┌───────────────┐");
		System.out.println("│\t물건명\t│");
		System.out.println("├───────────────┤");
		for(String product : products){
			System.out.println("│\t"+product+"\t│");
		}
		System.out.println("└───────────────┘");
		System.out.println("┌───────────────┐");
		System.out.println("│\t가격\t│");
		System.out.println("├───────────────┤");
		for(int price : prices){
			System.out.println("│\t"+price+"\t│");
		}
		System.out.println("└───────────────┘");
		System.out.println("┌───────────────┬───────────────┐");
		System.out.println("│\t물건명\t│\t가격\t│");
		System.out.println("├───────────────┼───────────────┤");
		for(int idx=0 ; idx<products.length ; idx++){
			System.out.println("│\t"+products[idx]+"\t│\t"+prices[idx]+"\t│");
		}
		System.out.println("└───────────────┴───────────────┘");
	}
}
