/*
 * 숙제1)
 * 6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
 * 사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합을 출력하시오
 * 월급여 - sal/13
 * 인턴기간 - 월급여의 70%
 * 인턴기간월급여총액 - 인턴기간6개월 급여 총액을 10단위 절삭
 * 사원번호 사원명 입사일 인턴기간만료시점 인턴기간월급여
 * 
 **/
select empno 사원번호, ename 사원명, hiredate 입사일, add_months(hiredate, 6) 인턴기간만료시점,
floor((sal/12) * 0.7 * 6) 인턴기간월급여 from emp;

/*
 * 급여계산 3단계 급여일을 나누어서 출력하세요.
 * 1단계 당월 20일
 * 2단계 당월 마지막날
 * 3단께 다음달 10일
 * 사원 입사일 첫월급1 첫월급2 첫월급3
 * */
select ename 사원명, sysdate + 4 급여일, last_day(sysdate) 급여일2, add_months(sysdate, 1) - 6 급여일3 from emp;

/*
 * 숙제
 * 	사원, 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 @@ 초), 근무개월수,  
 * */
select ename 사원, hiredate 입사일, to_char(sysdate, 'YY/MM/DD') || to_char(sysdate, 'AM HH24') || ' 시'
||to_char(sysdate, 'MI') || '분' || to_char(sysdate, 'SS') || '초' 메세지 , floor(months_between(sysdate, hiredate)) 근속월수 from emp;

/*
 *숙제 
 * 조회값이 '1981년01월01일' 부터 '1982년12월12일' 사이의 데이터 중, 
 * 부서가 30인 데이터를 조회하여,
 * 사원명(10자리-앞에 #기호처리
 * 직책 10자리 나머지뒤에 '-'처리
 * 입사일 @@년 @@월 @@일 @요일
 * 연봉(####1, 600.0 표시) 로 나타내세요...
 */
select LPAD(ename, 10 ,'#') 사원명, LPAD(job, 10 , '-') 직책,
to_char(hiredate, 'YY"년" MM"월" DD"일" DY"요일"') 입사일 , to_char(sal, '999999.9') 연봉 from emp
where deptno = '30' and hiredate between '1981-01-01' and '1981-12-12';

/*
 * 숙제 이름 관리자번호 보너스 ==> 데이터가 없을 때는 관리자번호경우 '최고레벨', 보너스는 '0' 표시
 */
select ename, nvl(deptno, '999') 직책, nvl(comm, '0') 보너스 from emp;

/*
 * 숙제 연봉에 따른 등급체계를 나눌려고 한다. decode를 활용해서, 
 * 1000 미만 F등급 성과급 3%
 * 1000 ~ 2000미만 E등급 성과급 5%
 * 1000 ~ 3000미만 D 등급 성과급 7%
 * 1000 ~ 4000미만 C 등급 성과급 4%
 * 1000 ~ 5000미만 B 등급 성과급 3%
 * 6000이상 		  A 등급 성과급 2%
 * 이름 부서 연봉 연봉등급 성과급 총액(연봉+성과급)
 * */
select ename 이름, deptno 부서, sal 연봉, 
decode(trunc(sal/10000 + 0.09, 1) , 0.1, 'F', 0.2, 'D', 0.3 ,'C', 0.4 ,'B', 0.5,'A') 연봉등급, 
decode(trunc(sal/10000 + 0.09, 1) , 0.1, 0.03, 0.2, 0.05, 0.3 ,0.07, 0.4 ,0.04, 0.5,0.02) 성과급, 
sal + sal * decode(trunc(sal/10000 + 0.09, 1) , 0.1, 0.03, 0.2, 0.05, 0.3 ,0.07, 0.4 ,0.04, 0.5,0.02) tot from emp;


/*
 * 숙제) 입사 분기 기준 표시 (1/4, 2/4, 3/4, 4/4) 입사 분기를 표기
 * 사원번호	이름		입사(년/월)	입사분기
 */
select empno 사원번호, ename 이름, to_char(hiredate, 'YY/MM') 입사,
case 
when to_number(to_char(hiredate, 'MM')) <=3 then '1/4'
when to_number(to_char(hiredate, 'MM')) <=6 then '2/4'
when to_number(to_char(hiredate, 'MM')) <=9 then '3/4'
when to_number(to_char(hiredate, 'MM')) <=12  then '4/4'
end as 입사분기 from emp;