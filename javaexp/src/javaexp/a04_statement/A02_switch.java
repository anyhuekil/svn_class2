package javaexp.a04_statement;

public class A02_switch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// switch( 변수 ) : 정수, char, 문자열
		int score = (int)(Math.random()*101);// 0~100 랜덤수 발생..
		char ptGrade; // 등급..
		switch( score/10){ // 정수/정수 ==> 정수, 정수/실수 ==> 실수, 
							//  실수/정수 ==> 실수
			case 10:  // break가 없으면 다음 flow로 흘러간다.
				      //  ptGrade = 'A'가 처리 됨.
			case 9: ptGrade = 'A'; break;
			case 8: ptGrade = 'B'; break;
			case 7: ptGrade = 'C'; break;
			case 6: ptGrade = 'D'; break;
			default : ptGrade = 'F';
		}
		System.out.println("점수는 "+ score+", 학점등급은 "+ptGrade);
		/* 문자열 처리 switch*/
//		String [] compos=new String[]{"","",""}; 
		String [] compos = {"사원","대리","과장","차장","부장"};
		// 배열의 경우만 처리 되게..
		int ranPosIdx = (int)(Math.random()*compos.length);
		String chPos = compos[ ranPosIdx ];
		System.out.println("선택된 직위:"+chPos);
		switch(chPos){
			case "사원": System.out.println("200~300"); break;
			case "대리": System.out.println("240~350"); break;
			case "과장": System.out.println("300~650"); break;
			case "차장": System.out.println("400~700"); break;
			case "부장": System.out.println("450~"); break;
		}
		
		
	}

}
