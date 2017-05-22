/*
숙제1
6개월의 인턴기간에는 급여의 70%만 지급하기로 헀다.
사원의 인턴기간 말료시점을 출력하고, 6개월간의 급여의
총합을 계산하세요.
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여총액 - 인턴기간 6개월간 급여 총액을 10단위 절삭해서 출력
사원번호	사워명	입사일	인턴기간말료시점		인턴기간월급여
*/
select
	empno		사원번호,
	ename		사원이름,
	hiredate	입사일,
	sal			현재연봉,
	add_months(hiredate, 6)	"인턴기간 만료시점",
	trunc((sal/13)*0.7,-1)	"인턴기간 월급여"
from emp;

-- 숙제2
-- 급여계산 3단계 급여일을 나누어서 출력하세요.
-- 1단계 당월 20일	//
-- 2단계 당월 마지막날
-- 3단계 다음달 10일
-- 사원		입사일		첫월급1		첫월급2		첫월급3
select
	ename,
	last_day(hiredate),
	last_day(hiredate)	pay2,
	last_day(hiredate)+10	pay3
from emp;

/*
숙제3
근무개월수에 따른 차등 보너스 지금
가장 오래된 개월~가장 최근에 입사한 개월수
1/3 = 30%, 1/3 = 20%, 1/3 = 10% (연봉기준)
사원	입사일	현재날짜(YY/MM/DD AM @@시 @@분 @@초)	근무개월수	보너스
*/
select * from emp;
select
	ename,
	hiredate,
	to_char(sysdate, 'YY/MM/DD'),
	floor(months_between(hiredate, sysdate)),
	