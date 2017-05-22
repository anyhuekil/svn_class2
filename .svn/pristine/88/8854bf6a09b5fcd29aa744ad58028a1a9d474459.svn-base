/*** 1 ***/
select deptno "사원번호", ename "사원명", hiredate "입사일",
add_months(hiredate,6) "인턴기간 만료시점", trunc(sal/13*0.7,-1)*6 "인턴기간 월급여 총액" from emp;

/*** 2 ***/
select ename "사원", hiredate "입사일", last_day(hiredate)-(11+substr(last_day(hiredate),7,2)-31) "첫 월급", 
last_day(hiredate)+1 "첫 월급2",
last_day(hiredate)+10 "첫 월급3" from emp;
select ename "사원", hiredate "입사일", last_day(hiredate)-(11+to_char(last_day(hiredate),'DD')-31) "첫 월급", 
last_day(hiredate)+1 "첫 월급2",
last_day(hiredate)+10 "첫 월급3" from emp;

/*** 3 ***/
select ename "사원", hiredate "입사일", to_char(sysdate, 'YY/MM/DD AM HH24"시" MI"분" SS"초" ') "현재날짜",
trunc(months_between(sysdate,hiredate))||'개월' "근무개월수",
trunc(months_between(sysdate,hiredate),-1)-400||'%' "보너스" from emp order by "근무개월수" desc;

/*** 4 ***/
select lpad(ename,10,'#') "사원명", rpad(job,10,'-') "직책", 
to_char(hiredate, 'YY"년" MM"월" DD"일" DAY HH24"시" MI"분" SS"초" ') "입사일", 
lpad(to_char(sal, '9,999.9'),12,'#') "연봉" from emp 
where hiredate between to_date('1981년01월01일', 'YYYY"년"MM"월"DD"일"' ) and to_date('1982년12월12일', 'YYYY"년"MM"월"DD"일"')
and deptno=30;


/*** 5 ***/
select ename "이름", nvl(to_char(mgr),'최고레벨') "관리자번호", nvl(comm,0) from emp;

/*** 6 ***/
select ename "이름", deptno "부서", sal "연봉",


decode(trunc(sal,-3)/1000, 5, 'A등급',  --5000~6000
							4,'B등급',	--4000~5000	
							3,'C등급',	--3000~4000
							2,'D등급',	--2000~3000
							1,'E등급',	--1000~2000
				'F등급') "급여등급",
decode(trunc(sal,-3)/1000,5, sal*0.02,
					4, sal*0.03,
					3, sal*0.04,
					2, sal*0.07,
					1, sal*0.05,
					sal*0.03
					) "성과금",
decode(trunc(sal,-3)/1000,5, sal*1.02,
					4, sal*1.03,
					3, sal*1.04,
					2, sal*1.07,
					1, sal*1.05,
					sal*1.03
					) "총액"

from emp;
/*** 7 ***/
select empno "사원번호", ename "이름", 
to_char(hiredate, 'YYYY/MM') "입사(년/월)",
case when to_char(hiredate, 'MM')<=3 then '1분기'
	 when to_char(hiredate, 'MM')<=6 then '2분기'
	 when to_char(hiredate, 'MM')<=9 then '3분기'
	 else '4분기'
end "입사분기"
 from emp;


select * from emp;

/*
1)
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간 만료시점을 출력하고, 6개월간의 급여의 총합을 계산하세요.
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여 총액 - 인턴기간 6개월간 급여 총 액을 10단위 절삭해서 출력

사원번호		사원명 	입사일 	인턴기간만료시점		인턴기간월급여총액

2)
-- 급여 계산 3단계 급여일을 나누어서 출력하세요.
-- 1단계 당월 20일
-- 2단계 당월 마지막날
-- 3단계 다음달 10일
-- 사원 	입사일 	첫 월급1 첫 월급2 첫월급3

3)
	근무개월수에 따른 차등 보너스 지급
	가장 오래된 개월~가장 최근에 입사한 개월수
	1/3 = 30%, 1/3 - 20%, 1/3 = 10% (연봉기준)
	사원, 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 초), 근무개월수, 보너스
4)
	조회값이 '1981년01월01일'부터 '1982년 12월 12일' 사이의 데이터 중
	부서가 30인 데이터를 조회하여,
	
	list 형식
	사원명(10자리-앞에 #기호처리)
	직책(10자리-나머지뒤에 '-'처리)
	입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
	연봉(####1,600.0 표시)로 나타내세요.	
5)
--이름 	관리자번호 	보너스 ==> 데이터가 없을 때는 관리자번호 경우 '최고레벨'
-- 보너스는 '0' 표시	

6)
연봉에 따른 등급체계를 나누려고 한다.
decode를 활용해서, 
1000 미만 F등급		성과급 3% 0
1000 ~ 2000 미만 E등급	성과급 5% 1
2000 ~ 3000미만 D등급	성과급 7% 2
3000 ~ 4000 미만 C등급	성과급 4% 3
4000 ~ 5000 미만 B등급	성과급 3% 4
5000 ~ 6000 미만 A등급	성과급 2% 5

이름 	부서 	연봉	급여등급 	성과급 		총액(연봉+성과급)

7)
입사 분기 기준 표시(¼,2/4,¾,4/4) 입사 분기를 표기
사원번호, 이름, 입사(년/월), 입사분기

*/



