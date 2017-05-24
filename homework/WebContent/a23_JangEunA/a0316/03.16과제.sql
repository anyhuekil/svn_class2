/*
숙제1)
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합을 계산하세요..
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여총액- 인턴기간6개월간 급여 총액을 10단위 절삭해서 출력 
사원번호 사원명 입사일 인턴기간만료시점 인턴기간월급여(10단위절삭)
*/
select empno, ename, hiredate, add_months(hiredate,6), trunc((sal/13)*0.7,-1) from emp;

 -- 급여계산..3단계 급여일을 나누어서 출력하세요.
 -- 1단계 당월 20일
 -- 2단계 당월 마지막날
 -- 3단계 다음달 10일
 -- 사원 입사일 첫월급1 첫월급2 첫월급3
select ename, hiredate, last_day(add_months(hiredate,-1))+20 Sal01,last_day(hiredate) Sal02,last_day(hiredate)+10 Sal03 from emp;
 
/*
 숙제
 	근무개월수에 따른 차등 보너스 지급
	가장오래된 개월~가장 최근에 입사한 개월수
	1/3 = 30%, 1/3=20%, 1/3=10%(연봉기준)
 	사원, 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 @@초), 근무개월수, 보너스	 
*/
-- select ename, hiredate, to_char(sysdate,'YYYY/MM/DD AM HH24:MI:SS') 현재날짜, trunc(months_between(sysdate, hiredate)) 근무개월수,
-- comm from emp;

/*
과제)
조회값이 '1981년01월01일' 부터 '1982년12월12일' 사이의 데이터 중,
부서가 30인 데이터를 조회하여,
list 형식
	사원명(10자리-앞에 #기호처리)
	직책(10자리-나머지 뒤에 '-'처리)
	입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
	연봉(####1,600.0 표시)로 나타내세요..
*/

select lpad(ename,10,'#'), rpad(job,10,'-'), to_char(hiredate,'YYYY"년" MM"월" DD"일" HH24:MI:SS' ),
lpad(to_char(sal ,'9,999.9'),12,'#') from emp
where (substr(hiredate,1,2)='82' or substr(hiredate,1,2)='81') and deptno=30;

-- 숙제 이름 관리자번호 보너스 ==> 데이터가 없을 때는 관리자번호경우 '최고레벨', 보너스 '0'표시 
select ename, nvl(to_char(mgr),'최고레벨'), nvl(comm,0) from emp;

/*
숙제 연봉에 따른 등급체계를 나눌려고 한다.
decode를 활용해서, 
		1000 미만 F등급         성과금 3%
		1000~2000미만 E등급    성과금 5%
		2000~3000미만 D등급    성과금 7%
		3000~4000미만 C등급    성과금 4%
		4000~5000미만 B등급    성과금 3%
		5000~6000미만 A등급    성과금 2%
이름 부서 연봉 연봉등급 성과금 총액(연봉+성과금)
*/
select ename, deptno, sal, 
	decode(trunc(sal/1000,0), 0,'F',
				1,'E',
				2,'D',
				3,'C',
			    4,'B',
				5,'A',
				'미정') salLevel,
	decode(trunc(sal/1000,0), 0,'0.03',
				1,'0.05',
				2,'0.07',
				3,'0.04',
			    4,'0.03',
				5,'0.02',
				'미정') salPlus,
	sal+sal*(decode(trunc(sal/1000,0), 0,'0.03',
				1,'0.05',
				2,'0.07',
				3,'0.04',
			    4,'0.03',
				5,'0.02',
				'미정'))	total
from emp;

/*
숙제) 입사 분기 기준 표시 (1/4, 2/4, 3/4, 4/4)입사 분기를 표기
사원번호, 이름, 입사(년/월), 입사분기
*/

select empno, ename, to_char(hiredate,'yy/mm') 입사일, trunc(to_char(hiredate,'mm')/4,0)+1 ||'/4' 입사분기 from emp;
