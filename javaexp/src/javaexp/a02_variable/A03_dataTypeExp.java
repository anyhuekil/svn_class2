package javaexp.a02_variable;

public class A03_dataTypeExp {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("하루 지출비용 list");
		short tranPay=3000;
		short foodPay=5000;
		short spFoodPay=2000;
		int tot=tranPay+foodPay+spFoodPay;
		float avg=tot/3.0F;
		boolean isTarget = tot<=10000;
		System.out.println("교통비:"+tranPay+"원");
		System.out.println("식비:"+foodPay+"원");
		System.out.println("다과비:"+spFoodPay+"원");
		System.out.println("품목별 평균 비용:"+avg+"원");
		System.out.println("총비용:"+tot+"원");
		System.out.println("목표비용 초과여부:"+isTarget+"(10000이하시)");
	}

}
