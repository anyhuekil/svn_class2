/*
	과제 1.
	6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
	사원의 인턴기간 만료시점을 출력하고, 6개월간의 급여의 총합을 출력
	월급여 = sal/13	/ 인턴기간 - 월급여의 70%	/ 인턴급여총액 - 6개월간 급여의 합을 10단위로 절삭처리
	사원번호, 이름, 입사일, 인턴 만료시점, 인턴 급여총액
	
	과제 2.
	근무 개월수에 따른 보너스 차등지급
	1/3 30%, 1/3 20%, 1/3 10% 오래했을수록 높음
	사원 입사일 현재날짜(@@/@@/@@ AM @@시 @@분 @@초) 근무개월수 보너스 
	
	과제 3.
	조회값이 1981년 1월 1일부터 1982년 12월 12일 사이의 data 중, 부서가 30인 data를 조회하여,
	사원명(10자리-앞에 #기호처리) 직책(10자리-나머지 뒤 -처리) 입사일(@@년 @@월 @@일 @요일 24시분초) 연봉(####1,600.0)로 출력
	
	과제 4.
	연봉에 따른 등급체계를 나누려고 한다. decode를 활용
	1000 미만			F등급	성과급 3%
	1000 ~2000 미만		E등급	성과급 5%
	2000 ~3000 미만		D등급	성과급 7%
	3000 ~4000 미만		C등급	성과급 4%
	4000 ~5000 미만		B등급	성과급 3%
	5000 ~				A등급	성과급 2%
	이름 부서 연봉 연봉등급 성과급 총액(연봉+성과급) 순으로 출력
	
	과제 5.
	입사 분기 기준표시(1/4, 2/4, 3/4, 4/4) 입사분기를 표기
	사번 사원명 입사일(년/월) 입사분기
*/

-- 과제 1.
select empno, ename, hiredate, add_months(hiredate,6) "인턴만료시기", round(0.7*sal*6/13,-2) "인턴기간 총 급여" from emp;

-- 과제 2.
select months_between(sysdate, hiredate)/12 from emp;

-- 과제 3.
select lpad(ename,10,'#') "Name", rpad(job,10,'-') "직책", to_char(hiredate,'YY"년 "MON DD"일 "DAY HH24"시 "MI"분 "SS"초"'),
	lpad(to_char(sal,'9,999.9'),10,'#')
from emp
	where (hiredate between to_date('1981/01/01','YYYY/MM/DD') and to_date('1982/12/12','YYYY/MM/DD'))
	and deptno = 30;

-- 과제 4.
select ename, deptno, sal,
	decode(floor(sal/1000), 0,'F등급',
							1,'E등급',
							2,'D등급',
							3,'C등급',
							4,'B등급',
						   	  'A등급') Grade,
	decode(floor(sal/1000), 0,(0.03*sal),
							1,(0.05*sal),
							2,(0.07*sal),
							3,(0.04*sal),
							4,(0.03*sal),
						   	  (0.02*sal)) "성과급",
	decode(floor(sal/1000), 0,sal+(0.03*sal),
							1,sal+(0.05*sal),
							2,sal+(0.07*sal),
							3,sal+(0.04*sal),
							4,sal+(0.03*sal),
						   	  sal+(0.02*sal)) "연봉+성과급"
from emp;

-- 과제 5.
select empno, ename, to_char(hiredate,'YY"년 "MON') "입사일",
	case when substr(hiredate,4,2)<=3 then '1분기'
		 when substr(hiredate,4,2)<=6 then '2분기'
		 when substr(hiredate,4,2)<=6 then '3분기'
	 	 else '4분기'
	end "분기"
from emp;		
	
	
	
select substr(hiredate,4,2) from emp;