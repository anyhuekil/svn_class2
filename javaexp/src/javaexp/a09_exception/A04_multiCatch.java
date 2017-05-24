package javaexp.a09_exception;


public class A04_multiCatch {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// ArrayIndexOutOfBoundsException
		// NumberFormatException 두가지 예외가
		// 함께 발생는 예외 처리..
/*
 try{
 }catch(최하위 예외클래스){
 }catch(같은 레벨이면 예외클래스 ){
 }catch(상위레벨의 예외클래스){
 }catch(최상위 레벨 예외 클래스){}
 * */		
		
		try{
			String data01= args[0];
			System.out.println(data01.toString());
			int num01 = Integer.parseInt(data01);
		}catch(ArrayIndexOutOfBoundsException aie){
			// .getMessage() : 에러 관련 메시지..
			System.out.println("메시지:"+aie.getMessage());
			// .printStackTrace() : 에러 경로 추적
			System.out.println("++++++++++++");		
			aie.printStackTrace();
			System.out.println("++++++++++++");
			
			System.out.println("args에 해당 index에 값이 입력되지 않았습니다!!");
		}catch(NumberFormatException nfe){
			System.out.println("정수형문자열을 입력하여야 합니다!!");
		// XXXXException의 상위 Exception 클래스
		}catch(Exception e){
			System.out.println("기타 예외 발생!!");
		}finally{
			System.out.println("예외 있든, 정상적인 프로세스 진행 했든");
			System.out.println("처리할 프로세서는 다 finally로 오라!!");
		}
		
	}

}
