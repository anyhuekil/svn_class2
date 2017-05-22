/*
숙제1
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합 계산하세요.
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간 월급여 총액 - 인턴6개월간의 급여 총액
사원번호 / 사원명 / 입사일 / 인턴기간만료시점 / 인턴기간월급(sal/13*0.7)
*/
select * from emp;

select empno "사원번호" , ename "사원명" , 
		to_char(hiredate, 'yyyy-mm-dd') "입사일",
		to_char(add_months(hiredate,6), 'yyyy-mm-dd') "인턴만료시간",
		trunc((sal/13)*0.7,0) "인턴 급여",
		trunc(((sal/13)*0.7)*6,0) "인턴기간 총급여"
from emp;


-- 숙제2
-- 급여 계산 3단계 급여일을 나누어서 출력하세요
-- 1단계 당월 20일
-- 2단계 당원 마지막날
-- 3단계 다음달 10일
-- 사원입사일 첫월급1 첫월급2 첫월급3

select ename, to_char(hiredate, 'yyyy-mm-dd') "입사일",
	to_char(last_day(add_months(hiredate,-1))+20, 'yyyy-mm-dd') "당월20일",
	to_char(last_day(hiredate), 'yyyy-mm-dd') "당월마지막날",
	to_char(last_day(hiredate)+10, 'yyyy-mm-dd') "다음달10일"
from emp;

/* 
숙제3
	근무개월수에 따른 차등 보너스 지급 
	1/3 = 30%, 1/3=20%, 1/3=10%
	사원 , 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 @@초), 근무개월수, 보너스
*/
select ename "사원", to_char(hiredate) "입사일", 
		to_char(sysdate,'yy/mm/dd am hh"시" mi"분" ss"초"') "현재날짜",
		trunc(months_between(sysdate, hiredate)) "근무개월수",
		trunc(months_between(sysdate, hiredate))-400  "계산"
		
		--보너스 계산식 필요 max/min
		
		from emp;
		
		
select max(trunc(months_between(sysdate, hiredate))) from emp; --434 최대
select min(trunc(months_between(sysdate, hiredate))) from emp; --410 최소
select avg(trunc(months_between(sysdate, hiredate))) from emp; --425 평균
select count(trunc(months_between(sysdate, hiredate))) from emp; --14개 데이터


/*
숙제4
조회값이 '1981년, 01월 01일'부터 '1982년12월12일' 사이의 데이터 중 부서가 30인 데이터를 조회하여 
사원명(10자리 앞 ###기호처리)
직책(10자리-나머지 뒤 - 처리)
입사일(@@년 @@월 @@일 @요일 24시)
연봉 (###1,600.0)표시
*/

select  deptno "사원번호",
		lpad(ename, 10, '#') "사원명",
		rpad(job,10,'-') "직책",
		to_char(hiredate, 'yy"년"mm"월"dd"일"day hh24"시"') "입사일",
		lpad(to_char(sal, '999,999.9'),13,'#') "연봉"
from emp
where deptno ='30'and emp.HIREDATE between '1981/01/01' and '1982/12/12'; 

/*
숙제 5
이름 관리자번호 보너스 ==> 
데이터가 없을 때
관리자 번호 '최고레벨', 보너스는 '0'표시
 */
 
select ename "이름", nvl(comm,0) "보너스", 
	nvl(to_char(nvl(mgr,'')),'최고레벨') "관리자번호"
 from emp; 
 
 
select ename "이름", nvl(comm,0) "보너스", 
	case when 0 = nvl(mgr,0) then '최고레벨'
		else to_char(mgr,'9999')
			 end "관리자번호"
 from emp; 
 

/* 
 숙제 6
 연봉에 따른 등급체계를 나눌려고 한다.
decode를 활용해서,
    1000 미만        F등급    성과급 3%
    1000 ~ 2000미만    E등급    성과급 5%
    2000 ~ 3000미만    D등급    성과급 7%
    3000 ~ 4000미만    C등급    성과급 4%
    4000 ~ 5000미만    B등급    성과급 3%
    5000 ~ 6000미만    A등급    성과급 2%
이름 부서 연봉 연봉등급 성과급 총액(연봉+성과급)
*/

select ename "이름" , deptno "부서" , sal "연봉",
	
case when trunc(sal, -3)=0 then 'F등급'
	 when trunc(sal, -3)=1000 then 'E등급'
	 when trunc(sal, -3)=2000 then 'D등급'
	 when trunc(sal, -3)=3000 then 'C등급'
	 when trunc(sal, -3)=4000 then 'B등급'
else 'A등급'
	end "등급",

case when trunc(sal, -3)=0 then '3%'
	 when trunc(sal, -3)=1000 then '5%'
	 when trunc(sal, -3)=2000 then '7%'
	 when trunc(sal, -3)=3000 then '4%'
	 when trunc(sal, -3)=4000 then '3%'
else '2%'
	end "성과급(%)",

case when trunc(sal, -3)=0 then sal*0.03
	 when trunc(sal, -3)=1000 then sal*0.05
	 when trunc(sal, -3)=2000 then sal*0.07
	 when trunc(sal, -3)=3000 then sal*0.04
	 when trunc(sal, -3)=4000 then sal*0.03
else sal*0.02
	end "성과금액",	

case when trunc(sal, -3)=0 then sal*1.03
	 when trunc(sal, -3)=1000 then sal*1.05
	 when trunc(sal, -3)=2000 then sal*1.07
	 when trunc(sal, -3)=3000 then sal*1.04
	 when trunc(sal, -3)=4000 then sal*1.03
else sal*1.02
	end "총액"	
		from emp;	 

/*
숙제7
입사 분기 기준 표시(1/4, 2/4, 3/4, 4/4) 입사 분기를 표시
사원번호, 이름, 입사(년/월), 입사분기
 */

select * from emp;
select empno "사원번호", ename "이름", to_char(hiredate, 'yy"년/"mm"월"') "입사일",


 case when to_char(hiredate, 'mm') = 01 then '1분기'
 	 when to_char(hiredate, 'mm') = 02 then '1분기'
 	 when to_char(hiredate, 'mm') = 03 then '1분기'

 	 when to_char(hiredate, 'mm') = 04 then '2분기'
 	 when to_char(hiredate, 'mm') = 05 then '2분기'
 	 when to_char(hiredate, 'mm') = 06 then '2분기'

 	 when to_char(hiredate, 'mm') = 07 then '3분기'
 	 when to_char(hiredate, 'mm') = 08 then '3분기'
 	 when to_char(hiredate, 'mm') = 09 then '3분기'

 else '4분기'
	end "분기"
	from emp;
	


