-- 숙제1)
-- 6개월의 인턴기간에는 급여의 70%만 지급하기 했다. 사원의 인턴기간만료시점을 출력하고, 6개월간의 급여 총합을 계산하세요 
-- 월급여 - SAL/13, 인턴기간 - 월급여의 70%, 인턴기간월급여의 총액 - 인턴기간 6개월간 급여 총액을 10단위 절삭해서 출력
-- 사원번호 사원명 입사일 인턴기간만료시점 인턴기간월급여
select deptno, ename, hiredate, add_months(sysdate, '6') internEndTime, trunc(sal/13 * 7/10, 2) totalSal from emp;



--숙제2) 사원, 입사일, 현재날짜(~~/~~/~~ AM ~~시 ~~분 ~~초), 근무개월수, 보너스
--근무 개월수에 따른 차등 보너스 지급
-- 가장 오래된 개월 ~ 가장 최근에 입사한 개월수
-- 1/3 = 30% 1/3 = 20%, 1/3 = 10%(연봉기준)
select ename, hiredate, to_char(sysdate,'YYYY/MM/DD" "am" "HH24"시"MI"분"SS"초"') 현재정보,
(117-(to_number(substr(hiredate,1,2))+1))*12+3+(12-to_number(substr(hiredate,4,2))) 근무개월수,
case when (117-(to_number(substr(hiredate,1,2))+1))*12+3+(12-to_number(substr(hiredate,4,2))) >= 428 then '30%'
     when (117-(to_number(substr(hiredate,1,2))+1))*12+3+(12-to_number(substr(hiredate,4,2))) <= 418 then '20%'
     else '10%' end 보너스
from emp;



--숙제3)
--조회값이 '1981년 01월 01'부터 '1981년 12월12일' 사이의 데이터 중 부서가 30인 데이터를 조회하여,
--사원명(10자리-앞에 #기호처리) 직책(10자리-나머지 공백처리) 입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초) 연봉(####1, 600.0 표시)로 나타내세요.
select lpad(ename, 10, '#'), lpad(job,10,' '), to_char(hiredate,'YY"년"MM"월"DD"일"HH24"시"MI"분"SS"초"'), to_char(sal, '999.9') from emp 
where hiredate > to_date('1981/01/01','YYYY/MM/DD') and hiredate < to_date('1981/12/12','YYYY/MM/DD') and deptno = 30 ;



--숙제4) 1단계 당월 20일 / 2단계 당월 마지막날 / 3단계 다음달 10일 
select add_months(last_day(hiredate)+10,-1), last_day(hiredate),last_day(hiredate)+10 from emp; 



-- 숙제5) : 이름, 관리자번호, 보너스 --> 데이터가 없을 때는 관리자 번호의 경우 '최고레벨', 보너스는 '0'으로 표시.
select ename, nvl(to_char(mgr,'9999'),'최고등급'), nvl(comm, 0) from emp;



/* 숙제6) : 숙제 연봉에 따른 등급체계를 나눌려고 한다. decode를 활용해서, 다음과 같이 분류하라
			1000미만 F등급			성과금 3%
			1000 ~ 2000미만 E등급	성과금 5%
			2000 ~ 3000미만 D등급	성과금 7%
			4000 ~ 4000미만 C등급	성과금 4%
			5000 ~ 5000미만 B등급	성과금 3%
			6000미만 A등급	 		성과금 2%
이름		부서		연봉		연봉등급		성과급		총액(연봉+성과금)*/
select ename 이름, deptno 부서, sal 연봉, 연봉등급, 총액(연봉+성과금) from emp ;



/* 숙제 7) 입사 분기 기준 표시(1/4,2/4,3/4,4/4) 입사 분기를 표기
사원번호, 이름, 입사(년/월), 입사분기*/
select empno 사원번호, ename 이름, to_char(hiredate,'YYYY/MM') 입사,
		decode(substr(hiredate,4,2),'01','1분기'
								   ,'02','1분기'
								   ,'03','1분기'
								   ,'04','2분기'
								   ,'05','2분기'
								   ,'06','2분기'
								   ,'07','3분기'
								   ,'08','3분기'
								   ,'09','3분기'
								   ,'10','4분기'
								   ,'11','4분기'
								   ,'12','4분기',
								   '미정') 입사분기 from emp;
