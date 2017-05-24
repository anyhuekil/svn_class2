/*
숙제1)
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합을 계산하세요.
월급여  -  sal/13
인턴기간 - 월급여의 70%
인턴기간월급여총액 - 인턴기간6개월 급여 총액을 10단위 절삭해서 출력
사원번호  사원명 입사일 인턴기간만료시점  인턴기간월급여

*/
select empno, ename, hiredate, add_months(hiredate, 6), trunc(sal/13*0.7*6) from emp;


/*
숙제2)
급여 계산 3단계 급여일을 나누어서 출력하세요
1단계3 당월 20일
2단꼐 당월 마지막날
3단계 다음달 10일
사원 입사일 첫월급1 첫월급2 첫월급3
*/
select ename , hiredate ,last_day(add_months(hiredate,-1))+20 ,last_day(hiredate),last_day(hiredate)+10 from emp;


/*
숙제3)
	근무개월수에 따른 차등 보너스 지급
	가장 오래된 개월~가장 최근 입사한 개월수
	1/3=30% 1/3=20% 1/3=10% (연봉기준)
	사원,입사일, 현재날짜 (@@/@@/@@ AM @@시 @@분 @@초), 근무개월수, 보너스
*/
select ename, hiredate ,to_char(sysdate, 'YYYY/MM/DD AM HH24"시"MI"분"SS"초"') , floor(months_between(sysdate,hiredate)), nvl(comm,0) from emp;

/*
숙제4) 
조회값이 '1981년01월01일'부터 '1982년12월12일' 사이의 데이터 중,
	부서가 30인 데이터를 조회하여,
list형식	
	사원명(10자리-앞에 #기호처리)
	직책(10자리-나머지뒤에 '-'처리)
	입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
	연봉(####1,600.0표시)로 나타나세요
*/
select lpad(ename, 10, '#') 사원명, rpad(job,10,'-') 직책 ,to_char(hiredate, 'YYYY/MM/DD AM HH24"시"MI"분"SS"초"') 입사일 , 
	   lpad(to_char(sal,'9,999.9'),12,'#') 연봉 from emp
where deptno =30 and
	  (to_date('1981/01/01','yyyy/mm/dd')<= hiredate and hiredate <= to_date('1982/12/12','yyyy/mm/dd'));

/*
 숙제5)
이름 관리자번호 보너스 ==> 데이터가 없을 때는 관리자번호경우 '최고레벨' 보너스는 '0'표시
*/

select ename, nvl(to_char(mgr),'최고레벨'), nvl(comm,0) from emp;

/*
숙제6)
연봉에 따른 등급체계를 나눌려고 한다.
decode를 활용해서 
	1000            미만 F등급  성과급 3%
	1000~2000 미만 E등급  성과급 5%
	2000~3000 미만 D등급  성과급 7%
	3000~4000 미만 C등급  성과급 4%
	4000~5000 미만 B등급  성과급 3%
	5000~6000 미만 A등급  성과급 2%
이름 부서 연봉 연봉등급  성과급 총액(연봉+성과급) 
*/
select ename, deptno ,sal ,decode(trunc(sal/1000,0), 0,'F등급',
									   1,'E등급',
									   2,'D등급',
									   3,'C등급',
									   4,'B등급',
									   5,'A등급',
									   '우주저편') 연봉등급, 
							decode(trunc(sal/1000,0), 0,'3',
									   1,'5',
									   2,'7',
									   3,'4',
									   4,'3',
									   5,'2',
									   '우주저편') 성과급 ,
						    sal+(sal*decode(trunc(sal/1000,0), 0,'0.03',
									   1,'0.05',
									   2,'0.07',
									   3,'0.04',
									   4,'0.03',
									   5,'0.02',
									   '우주저편')) 총액
									   
from emp;	


/*
숙제7)
입사 분기 기준 표시(1/4,2/4,3/4,4/4)입사 분기를 표기
사원번호,이름,입사(년/월),입사분기
*/
select empno, ename, to_char(hiredate,'yy/mm') 입사, trunc(to_char(hiredate,'mm')/4,0)+1||'/4' 입사분기

 from emp;
