/*
	숙제1) 6개월의 인턴기간에는 급여의 70%만 지급된다.
	사원의 인턴기간만료시점을 출력하고, 6개월 급여의 총합을 계산하세요. 아래 형식으로.
	월급여- sal/13으로 정의하고, 
	인턴기간 - 월급여의 70%
	인턴기간 월급여 총액- 6개월간급여 총액을 10단위 절삭.
	사원번호 사원명 입사일 인턴기간만료시점 인턴기간월급여

*/
select empno 사원번호, 
		ename 사원명, 
		hiredate 입사일, 
		add_months(hiredate, 6) 인턴기간만료시점, 
		round(sal*( 0.7 * sal/13 *6), -1) 인턴기간월급여 from emp;
/*
	숙제)
	급여계산... 3단계 급여일을 나누어서 출력.
	1단계 당월20일.
	2단계 달월 마지막날.
	3단계 다음달 10일. 아래형식으로..
	사원 입사일 첫월급1 첫월급2 첫월급3단계. 따로따로.

*/
select ename, hiredate, sal, (last_day(hiredate-20)) +20 당월20일, 
		 (last_day(hiredate)) 당월마지막날,
		 (last_day(hiredate))+ 10 다음달10일
	from emp;
SELECT HIREDATE, ADD_MONTHS(LAST_DAY(ROUND(HIREDATE-5, 'MONTH')),-1)+20 "첫월급1"
 from emp;
 /*
숙제:
근무개월수에따른 차등보너스지급.
가장 오래된 개월~ 1/3= 30%, 1/3= 20%, 1/3 =10% .... 형식은 아래에.
사원, 입사일, 현재날짜( @@/@@/@@ AM @@시@@분@@초), 근무개월수, 보너스
*/
select ename, hiredate, to_char(hiredate, ' YY"/"MM"/"DD AM HH"시"MM"분"SS"초" ') 형식변환,
	trunc(months_between(sysdate, hiredate))   개월수,
	trunc((months_between(sysdate, hiredate)-400)/14,1)   상대적개월수,
	CASE when to_number(trunc(months_between(sysdate, hiredate))) <= 423 then  '30%'
	 	when to_number(trunc(months_between(sysdate, hiredate))) <= 431 then  '20%'
	ELSE  '10%' END 보너스
	from emp;
/*
	숙제. 조회값이 '1981년01월01일' 부터 '1982년12월12일' 사이의 데이터 중에서.
		부서가 30인 데이터를 조회하여, 
		사원명(10자리-앞에 #기호처리.)
		직책(10자리- 나머지뒤에 -처리.)
		입사일(@@년 @@월 @@일 @요일)
		연봉(####1,600.0 표시.) 로 나타내어라. 
*/
select lpad(ename, 10 , '#') 사원명, rpad(job, 10, '-') 직책 , 
	to_char(hiredate, ' YY"년" MM"월" DD"일" DAY"요일" ') 입사일 ,  
	lpad(to_char(sal,'9,999.9'),12,'#')
	from emp 
	where deptno  =30 and 
 	hiredate between to_date('1981년01월01일', 'YYYY"년"MM"월"DD"일"' ) and to_date('1982년12월12일', 'YYYY"년"MM"월"DD"일"');
/*
숙제 :
이름 관리자번호 보너스 =>>> 데이터가 없을떈 관리자번호경우 '최고레벨', 보너스는  '0' 표시.*/
select mgr, comm, nvl((comm), '0'), nvl(to_char(mgr), to_char('최고레벨')) from emp;

/*
	숙제연봉에 따른 등급체계를 나누려고 할떄..
	DECODE를 활용해서 1000미만 F등급.  성과급 3%
			 2000미만 E등급.  성과급 5%
			 3000미만 D등급.  성과급 7%
			 4000미만 C등급.  성과급 4%
			 5000미만 B등급.  성과급 3%
			 6000미만 A등급.  성과급 2%
	형식:
	이름 부서 연봉 연봉등급 성과급 총액(연봉+성과급)
*/
select ename, deptno, sal, 
	DECODE(floor(sal/1000), '0', 'F','1', 'E','2', 'D',
			'3', 'C','4', 'B','5', 'A') 연봉등급,
	DECODE(floor(sal/1000), '0', '3%', '1', '5%', '2', '7%', 
			'3', '4%', '4', '3%', '5', '2%') 성과급등급,
	sal*(1+ DECODE(floor(sal/1000), '0', '3', '1', '5', '2', '7', 
			'3', '4', '4', '3', '5', '2')/100) 총합산액
from emp;
/*
	숙제: 입사분기 기준 표시 (1/4,2/4,3/4,4/4) 입사분기표시.
	사원번호 이름 입사(년/월) 입사분기.

*/
select ename, hiredate, 
	CASE when to_number(to_char(hiredate,'MM')) <= 03  then '1분기'
		when to_date(hiredate, 4,2) <= 06  then '2분기'
 		when to_date(hiredate, 4,2) <= 09  then '3분기'
 		ELSE '4분기' END from emp;
/*
	영어권은 to_number(to_char(hiredate, 'MM')) <= 03 이렇게 처리하는게 좋다!!				아니고, to_number(to_char(hiredate, 'mm')) 

이 date 추출에선 최고 코드이다!!!		
	*/
