package javaexp.a09_exception;
/*
 * a09/a06 숙제;
 * PointException: 점수가 특정 점수이하로 되었을떄, 예외처리로
 * "불합격입니다. 재수강을 부탁드립니다."
 * 
 * exam:
 * 	getPoint(임의의 점수): 예외처리 메서드
 * 	-입력받은 점수가 60점 이하일떄, 예외객체호출
 * 	-Main()
 * 
 * 2단계 -
 * PointException
 * 추가 메서드: showResult()
 *  @@과목, @@점 획득-- 결과는 @@@(합격/불합격) 입니다.
 * Exam
 * 	과목명, 시험점수
 * 	getPoint(): 과목과 Random next()활용.
 */

class Check{
	int grade;
	String subject;
	public void getPoint(int grade) throws PointException{
		this.grade = grade;
		if(this.grade <= 60){
			throw new PointException("불합격입니다. 재수강을 부탁드립니다.");
		}
		else{
			System.out.println("합격하셨습니다. 축하드립니다!");
		}
	}
	public void showResult(String subject, int grade) throws PointException{
		this.subject = subject;
		this.grade = grade;
		System.out.print("과목: "+ this.subject + " \t점수: "+ this.grade + "   \t결과는...");
		getPoint(this.grade);
	}
}

class PointException extends Exception{
	public PointException(){
		System.out.println("Point Exception");
		}
	public PointException(String msg){
		super(msg);
		System.out.println(msg);
	}
}

public class HW0504_gradeSorU {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		try {
			Check chk01 = new Check();
			int[][] gradeList = new int[10][2];
			String[] subject = {"Kor","Eng","Math","Sci"};
			for(int idx = 0; idx<gradeList.length; idx++){
				gradeList[idx][0] = (int)(Math.random()*4);
				gradeList[idx][1] = (int)(Math.random()*101);
				//System.out.println( "학생번호 "+idx+"\tSub: "+ subject[gradeList[idx][0]] + "\tgrade: "+ gradeList[idx][1]);
				//chk01.getPoint(gradeList[idx][1]);
				chk01.showResult(subject[gradeList[idx][0]], gradeList[idx][1]);
			}
		} catch (PointException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
}
