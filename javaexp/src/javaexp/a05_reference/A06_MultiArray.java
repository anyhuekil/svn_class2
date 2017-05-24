package javaexp.a05_reference;

public class A06_MultiArray {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
/* 다차원 배열 선언
 * 데이터type [][]  변수명=new 데이터type[1차원크기][2차원 크기][][][n차원크기]
 *          차원수 만큼[][][]..n개..
 * */
		String [][] products=new String[3][2];
		products[0][0]="사과";
		products[0][1]="오렌지";
		products[1][0]="연필";
		products[1][1]="볼펜";
		products[2][0]="세탁기";
		products[2][1]="TV";
//		products.length :가장 외부배열 크기
		for(int idx=0;idx<products.length; idx++){
			// products[idx].length:해당 배열마다 포함된 배열의 크기..
			System.out.println("가장 외부idx:"+idx);
			for(int ix=0;ix<products[idx].length;ix++){
				System.out.println( products[idx][ix] );
			}
		}
		
		
		
	}

}
