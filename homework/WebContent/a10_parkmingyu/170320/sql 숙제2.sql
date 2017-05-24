select * from emp;

 /* 숙제 : 완료
 1) 6개월의 인턴기간에는 급여의 70%만 지급하기로 했다. 
 	사원의 인턴기간만료 시점을 출력하고, 6개월간의 급여의 총합을 구하라.
	월급 - sal/13
	인턴월급 - 월급의 70%
	인턴월급총액 - 10단위 절삭해서 출력
	출력내용 : 사원번호/사원명/입사일/인턴만료시점/인턴월급/총급여
 */
 select empno "사원번호", ename "사원명", hiredate "입사일", 
 		add_months(hiredate, 6) "인턴만료시점", 
		sal/13*0.7 "인턴월급", trunc(sal/13*0.7*6,-1) "인턴총급여"
from emp;

/* 숙제 : 완료
	 급여 계산: 3단계 급여일을 나누어서 출력하세요.
 	1단계 당월 20일
 	2단계 당월 마지막날
 	3단계 다음달 10일
  사원/입사일/첫월급1/첫월급2/첫월급3
*/
select ename "사원", hiredate "입사일",
		last_day(hiredate)-(to_char(last_day(hiredate),'DD')-20) "첫월급1",
		last_day(hiredate) "첫월급2",
		last_day(hiredate)+10 "첫월급3"
from emp;
		
/* 숙제 :
	근무개월수에 따른 차등 보너스 지급
	가장 오래된 개월~가장 최근에 입사한 개월수
	1/3=30%, 1/3=20%, 1/3=10% (연봉기준)
	사원/입사일/현재날짜(@@/@@/@@ AM @@시 @@분 @@초)/근무개월수/보너스
*/
select ename "사원", hiredate "입사일", 
		to_char(sysdate, 'YY/MM/DD AM HH24"시 "MI"분 "SS"초"') "현재날짜",
		round(months_between(sysdate, hiredate),0)||'개월' "근무개월수",
		trunc(round(months_between(sysdate, hiredate),0)-400,-1)||'%' "보너스"
from emp
order by hiredate asc;

/*
숙제 : 완료
	조회값이 '1981년1월1일' 부터 '1982년12월12일' 사이의 데이터 중,
	부서가 30인 데이터를 조회하여 아래와 같이 출력하라.
	
	사원명(10자리-앞에 #기호처리)
	직책(10자리-나머지 뒤에 '-'처리)
	입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
	연봉( ####1,600.0 표시)
*/
select lpad(ename,10,'#') "사원명", rpad(job,10,'-') "직책", 
		to_char(hiredate,'YY"년 "MM"월 "DD"일" DAY HH24"시 "MI"분 "SS"초"') "입사일", 
		lpad(to_char(sal,'9,999.9'),12,'#') "연봉" 
from emp
where deptno='30';

/* 숙제 : 완료
	이름	관리자번호	보너스 ==> 데이터가 없을 때는 관리자번호 경우 '최고레벨', 보너스는 '0' 표시
*/
select ename "이름", 
		nvl(to_char(mgr,'9999'),'최고레벨') "관리자번호",
		nvl(comm,0) "보너스"
from emp;

/* 숙제 : 완료
	연봉에 따른 등급체계를 나누려고 한다.
	decode를 활용해서 처리.
		1000 미만 F등급			성과급 3%
		1000~2000 미만 E등급 	성과급 5%
		2000~3000 미만 D등급 	성과급 7%
		3000~4000 미만 C등급 	성과급 4%
		4000~5000 미만 B등급	성과급 3%
		5000~6000 미만 A등급	성과급 2%
	이름 / 부서 / 연봉 / 연봉등급 / 성과급 / 총액(연봉+성과급)
*/
select ename "이름", deptno "부서번호", sal "연봉", 
		decode((trunc(sal,-3)/1000),'0','F등급',
									'1','E등급',
									'2','D등급',
									'3','C등급',
									'4','B등급',
									'5','A등급',
									'미정') "연봉등급", 
		decode((trunc(sal,-3)/1000),'0',sal*0.03,
									'1',sal*0.05,
									'2',sal*0.07,
									'3',sal*0.04,
									'4',sal*0.03,
									'5',sal*0.02,
									'미정') "성과급", 
		decode((trunc(sal,-3)/1000),'0',sal*0.03+sal,
									'1',sal*0.05+sal,
									'2',sal*0.07+sal,
									'3',sal*0.04+sal,
									'4',sal*0.03+sal,
									'5',sal*0.02+sal,
									'미정') "총액"
from emp;

/* 숙제 : 완료
	입사일 분기(4분기) 기준 표시
사원번호 / 이름 / 입사일(년/월) / 입사분기
*/
select empno "사원번호", ename "이름",
		to_char(hiredate,'YY"년 "MM"월"') "입사일",
		case when to_char(hiredate,'MM')<='03' then '1분기'
			 when to_char(hiredate,'MM')<='06' then '2분기'
			 when to_char(hiredate,'MM')<='09' then '3분기'
			 when to_char(hiredate,'MM')<='12' then '4분기'
		end "입사분기"
from emp;
