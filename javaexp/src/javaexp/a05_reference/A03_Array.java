package javaexp.a05_reference;
//enum Week{}
public class A03_Array {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
// 배열의 선언
		int [] points;
//	기본 크기가 선언된 배열객체 생성
		points=new int[5];
//	배열 객체 데이터 할당.
		points[0] = 90;
		points[1] = 80;
		points[2] = 70;
//	해당 객체 호출.. 기본형은 데이터가 할당되지 않으면 0으로 자동할당
		for(int idx=0;idx<points.length;idx++){
			System.out.println("점수:"+points[idx]);
		}
//	배열객체 선언, 데이터 할당 
		double[] weights = new double[]{67.5, 70.4, 98.2};
		for(int idx=0;idx<weights.length;idx++){
			System.out.println("몸무게:"+weights[idx]);
		}
// 배열 복사.
//	System.arraycopy( 원본배열객체, int 원본배열시작index, 복사본배열객체,
//		               int 복사본배열시작위치, int 복사할길이)
		int[] orginArray={1,3,5};
		int[] targetArray= new int[5];
		System.arraycopy(orginArray, 0, targetArray, 0, 3);
		System.out.println("복사된 배열");
		for(int idx=0;idx<targetArray.length;idx++){
			System.out.println("데이터:"+targetArray[idx]);
		}
		String[] orgFruits={"사과","바나나","딸기"};
		String[] targetFruits= new String[5];
		//                        바나나(1)    4번째부터  2개복사
		System.arraycopy(orgFruits, 1, targetFruits, 3, 2);
		for(String fruit:targetFruits){
			System.out.println("복사된 과일"+fruit);
		}
		
		
		
		
		
		
	}

}
