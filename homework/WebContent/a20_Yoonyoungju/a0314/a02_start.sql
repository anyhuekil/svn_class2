/*
과제
아래의 형식으로 데이터를 나타내시오.
1. ename은 현재 연봉인 @@@인데, 최근에 5% 인상된 금액이며,
작년연봉은 @@@만원이였습니다
2.ename의 입사일은 hiredate 입니다.
3. 직책인 @@@인 부서번호가 @@@@입니다/
4. @@@님은 현재 연봉과 보너스(comm)의 합산액은 @@@입니다/
*/
--1. ename은 현재 연봉인 @@@인데, 최근에 5% 인상된 금액이며,
작년연봉은 @@@만원이였습니다
select ename||'은 현재 연봉인'||sal||'만원인데,최근에 5% 인상된 금액이며
작년 연봉은'||((sal/0.05)-sal)||'만원이였습니다' from emp;
--2.ename의 입사일은 hiredate 입니다.
select ename||'의 입사일은'||hiredate||'입니다' from emp;
--3. 직책인 @@@인 부서번호가 @@@@입니다/
select '직책인'||job||'인 부서번호가'||deptno||'입니다' from emp;
--4. @@@님은 현재 연봉과 보너스(comm)의 합산액은 @@@입니다/
select ename||'님은 현재 연봉과 보너스('||nvl(comm,0)||')의 합산액은'||(sal+nvl(comm,0))||'입니다'
from emp;


/*
 연습예제
 1.emp중에 급여가 2000미만이 되는 사원 정보 중에 사번과 급여를 출력하라
 2.연봉과 보너스의 합산 금액이 1500미만인 사람의 이름,연봉,보너스 ,합산액 을 출력하세요
 3.mgr이 null인 사람의 job과 이름 연봉을 출력하세요
 4.job이 clerk인 사람중 deptno가 30인 사람의 이름, 직책, 부서번호를 출력하세요
 5.연봉이 2000에서 3000 사이에 있는 사람의 부서번호 , 이름, 연봉을 출력하세요.
 6.
 */
--1.emp중에 급여가 2000미만이 되는 사원 정보 중에 사번과 급여를 출력하라
select empno "사번",sal"급여" from emp where sal <= 2000;
--2.연봉과 보너스의 합산 금액이 1500미만인 사람의 이름,연봉,보너스 ,합산액 을 출력하세요
select ename"이름", sal"연봉",nvl(comm,0)"보너스",sal+nvl(comm,0)"합산액"
 from emp where (sal+nvl(comm,0))<= 1500;
 --3.mgr이 null인 사람의 job과 이름 연봉을 출력하세요
select job"직책" , ename"이름",sal "연봉" from emp where nvl(mgr,0) =0;
--4.job이 clerk인 사람중 deptno가 30인 사람의 이름, 직책, 부서번호를 출력하세요
select ename"이름",job"직책",deptno "부서번호" from emp where job = 'CLERK' and deptno =30;
--5.연봉이 2000에서 3000 사이에 있는 사람의 부서번호 , 이름, 연봉을 출력하세요.
select deptno "부서번호", ename"이름", sal "연봉" from emp where sal >=2000 and sal <= 3000;
