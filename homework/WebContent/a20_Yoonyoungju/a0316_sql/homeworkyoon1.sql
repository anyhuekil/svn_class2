/*
숙제1)
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합을 계산하시오
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여총액 - 인턴기간6개워간 급여 총액을 10단위 절삭해서 출력

사원번호  사원명  입사일  인턴기간만료시점   인턴기간월급여총액(10단위절삭)

*/
select empno"사워번호",ename"사원명",hiredate"입사일",add_months(hiredate,6)"인턴기간만료시점"
,trunc((sal/13) * 0.7* 6,-1)"인턴기간월급여총액" from emp;


-- 급여계산 .. 3단계 급여일을 나누어서 출력하세요.
-- 1단계 당월20일
-- 2간계 당원 마지막날
-- 3단계 다음달 10일
-- 사원입사일 첫월급 1 첫월급2 , 첫월급3
select hiredate,add_months(last_day(hiredate),-1)+20"첫월급1", 
last_day(hiredate) "첫월급2",last_day(hiredate)+10 "첫월급3" FROM EMP;


/* 과제
	근무개월수에 따른 차등 보너스 지급
	가장 오래된 개월~ 가장 최근에 입사한 개월수
	1/3 = 30% , 1/3 = 20%, 1/3 = 10%(연봉기준)
	사원,입사일,현재날짜(@@/@@/@@ AM@@시 @@분 @@초),근무개월수,보너스

*/
SELECT ename, hiredate,to_char(sysdate,'"현재날짜("YYYY/MM/DD AMHH24"시"MI"분"SS"초)"'),
trunc(months_between(sysdate, hiredate))"근무개월수",comm from emp ;


/*
숙제 
조회값이 '1981년01월01일' 부터 '1982년 12월12일'사이의 데이터중,
	부서가 30인 데이터를 조회하여,
list 형식
	사원명(10자리-앞에 #기호처리)
	직책(10자리-나머지뒤에 '-'처리)
	입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
	연봉(####1,600.0 표시)초 나타내세요.
*/

select lpad(ename,10,'#'), rpad(job,10,'-'),
 to_char(hiredate,'"입사일("yyyy"년"mm"월"dd"일"day HH24"시"MI"분"SS"초)"')"입사일" ,
 lpad(to_char(sal,'9,999.9'),12,'#') from emp  where deptno =30 
and hiredate between to_date('1981-01-01','yyyy-mm-dd') and
to_date('1981-12-12','yyyy-mm-dd') ;

-- 숙제 이름   관리자번호 보너스  ==> 데이터가 없을 때는 관리자번호 경우 '최고레벨', 보너스는 '0'표시
select * from emp;
select ename, deptno, comm from emp;


/*
숙제 연봉에 따른 등급체계를 나눌려고 한다,.
decode를 활용해서 
	1000만 미만  F등급	성과급 3%
	1000~2000미만 E등급   성과급5% 1.05,
	2000~3000미만 D등급   성과급7%
	3000~4000미만 C등급   성과급4%
	4000~5000미만 B등급   성과급 3%
	5000~6000미만	 A등급   성과급 2%
	이름  부서  연봉  연봉등급  성과급  총액(연봉+성과급)
*/

select ename, deptno, sal, decode(trunc(sal/1000,0),
									0,'F등급',
									1,'E등급',
									2,'D등급',	
									3,'C등급',	
									4,'B등급',																																													
									'A등급')"연봉등급",
			decode(trunc(sal/1000,0),
									0,sal*0.03,
									1,sal*0.05,
									2,sal*0.07,	
									3,sal*0.04,	
									4,sal*0.03,																																													
									sal*0.02)"성과급",
			decode(trunc(sal/1000,0),
									0,sal*1.03,
									1,sal*1.05,
									2,sal*1.07,	
									3,sal*1.04,	
									4,sal*1.03,																																													
									sal*1.02)"총액(연봉+성과급)" from emp;



/* 숙제
	입사 분기 기준 표시(1/4,2/4,3/4,4/4) 입사 분기를 표기
	사원번호  , 이름  ,입사(년/월), 입사분기
	
	
	*/
	
