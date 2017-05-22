/*
과제1) // 완료
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다
사원의 인턴 기간만료시점을 출력하고, 6개월간의 급여의 총합을 계산
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여총액 - 인턴기간6개월간 급여 총액을 10단위 절삭
사원번호		사원명		인턴기간만료시점		인턴기간월급여	인턴기간월급여총액(10단위절삭)
*/
select * from emp;
select empno, ename,
	add_months(hiredate, 6) 인턴기간만료시점,
	(sal*7/130) 인턴기간월급여,
	trunc((sal*42/130), -1) 인턴기간월급여총액
from emp; 

select hiredate, hiredate from emp;


-- 급여계산 3단계 급여일을 나누어서 출력
-- 과제2) 1단계 당월 20일 // 완료
-- 2단계 당월 마지막날
-- 3단계 다음달 10일
-- 사원 입사일 첫월급1 첫월급2 첫월급3
select ename, hiredate,
	last_day(hiredate-20)+20 grade01,
	last_day(hiredate) grade02,
	last_day(hiredate)+10  from emp;
select hiredate, last_day(add_months(hiredate-20,1))+20 from emp; -- 계산식 차이
select add_months(last_day(add_months(hiredate, 1)-20), -1)+20 grade01 from emp;
select add_months(sysdate-20,1) from dual;

select 
	hiredate, last_day(hiredate-20)+20 grade01
from emp;



/*
과제3)
	근무개월수에 따른 차등 보너스 지급
	가장 오래된 개월~가장 최근에 입사한 개월수
	1/3 = 30%, 1/3 = 20% 1/3 = 10% (연봉기준)
	사원, 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 @@초), 근무개월수, 보너스%, 보너스금액
*/
select ename, hiredate 입사일, to_char(sysdate, 'YY/MM/DD AM HH"시"MM"분"SS"초"') 현재날짜,
	months_between(sysdate,hiredate) 근무개월수, sal from emp;





/*
과제4 // 완료
조회값이 '1981년01월01일' 부터 '1982년12월12일' 사이의 데이터 중, 부서가 30인 데이터를 조회하여,
list형식 사원명(10자리-앞에 #기호처리)
직책(10자리-나머지 뒤에 '-'처리)
입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
연봉( ####1,600.0 표시) 로 나타내시오
*/
select * from emp;
select lpad(ename,10,'#') 사원명,
		rpad(job,10,'-') 직책,
		to_char(hiredate,'YY"년"MM"월"DD"일"DAY HH24"시"MM"분"SS"초"') 입사일,
		lpad(ltrim(to_char(sal,'99999,000.0')),11,'#') "연봉"
		from emp where hiredate between '1981/01/01' and '1982/12/12' and deptno=30;



-- 과제5) // 완료
-- 이름 관리자번호 보너스 ==> 데이터가 없을 때는 관리자번호경우 '최고레벨'표시 보너스는 '0'표시
select * from emp;
select ename, nvl(to_char(mgr),'최고레벨') "관리자번호", nvl(comm,0) "보너스" from emp;





/*
과제6) // 완료
연봉에 따른 등급체계를 나누려고 한다
decode를 활용해서,
	   1000 미만 F 등급		성과급 3%
1000 ~ 2000 미만 E 등급		성과급 5%
2000 ~ 3000 미만 D 등급		성과급 7%
3000 ~ 4000 미만 C 등급		성과급 4%
4000 ~ 5000 미만 B 등급		성과급 3%
5000 ~  		A 등급		성과급 2%

이름		부서		연봉		연봉등급		성과급	총액(연봉+성과급)
*/
select ename,
	decode(deptno,	10, '회계',
						20, '감사',
						30, '영업',
						40, '운영',
						'미정') "부서",
sal,
	decode(trunc(sal,-3), 0, 'F',
						1000, 'E',
						2000, 'D',
						3000, 'C',
						4000, 'B',
				'A') "연봉등급",
	decode(trunc(sal,-3), 0, '3',
						1000, '5',
						2000, '7',
						3000, '4',
						4000, '3',
				'2')*sal/100 "성과급",
	decode(trunc(sal,-3), 0, '3',
						1000, '5',
						2000, '7',
						3000, '4',
						4000, '3',
				'2')*sal/100+sal "총액"
from emp;



/*
과제7) // 완료
입사 분기기준 표시(1/4,2/4,3/4,4/4) 입사 분기를 표기
사원번호, 이름, 입사(년/월), 입사분기
*/

select empno, ename, to_char(hiredate,'YY"년"MM"월"') 입사,
	case when to_char(hiredate,'MM')<4 then '1/4'
			when to_char(hiredate,'MM')<7 then '2/4'
			when to_char(hiredate,'MM')<10 then '3/4'
	else '4/4'
	end 입사분기	
from emp;



select * from nls_database_parameters
where parameter like '%DATE%';






