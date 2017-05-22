package javaexp.a04_statement;

public class Homework0412_2 {
	public static void main(String[] args) {
		System.out.println("┌───────────────┬───────────────┬───────────────┬───────────────┬───────────────┬───────────────┬───────────────┬───────────────┐");
		System.out.print("│");
		for(int i=2; i<=9 ; i++)
			System.out.print("\t"+i+"단\t│");
		System.out.println();
		System.out.println("├───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┼───────────────┤");
		for(int grade=1 ; grade<=9 ; grade++){
			System.out.print("│");
			for(int dan=2 ; dan<=9 ; dan++){
				System.out.print("\t"+dan+"*"+grade+"="+(dan*grade)+"\t│");
			}
			System.out.println();
		}
		System.out.println("└───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┴───────────────┘");
	}
}
