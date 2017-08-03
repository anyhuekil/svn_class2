package springweb.g01_aop;

import org.aspectj.lang.ProceedingJoinPoint;
// springweb.g01_aop.A01_Profiler
public class A01_Profiler {

	// 수행할 내용 처리 advice 클래스 메서드 
	// 특정 프로그램이 처리할 때, log 내용
	public Object trace(ProceedingJoinPoint jointPoint) 
				throws Throwable{
		// 해당 모듈이 시작하는 시작과..
		// 해당 모듈의 정보 출력
		String signatureString=jointPoint.getSignature().toShortString();
		System.out.println(signatureString+"시작!!");
		// 현재 시스템 수행 시간을 나타내는 기능메서드( @@@ ###)
		long start = System.currentTimeMillis();
		try{			
			Object result=jointPoint.proceed();
			return result;
		}finally{
		
			// 끝나는 시작을 처리하여 수행시간을 확인하는 advice만들
			long finish = System.currentTimeMillis();
			System.out.println(signatureString+"종료!!");
			System.out.println(signatureString+"의 수행 시간"+(finish-start)+"ms");
		}
	}


}
