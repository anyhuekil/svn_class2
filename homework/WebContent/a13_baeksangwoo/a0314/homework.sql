--연습 예제 
--1. EMP중 급여가 2000미만이 되는 사원 정보 중에 사번과 급여를 출력하라.
--2. 연봉과 보너스의 합산 금애기 1500미만인 사람의 이름, 연봉, 보너스, 합산액을 출력하세요.
--3. MRG이 NULL인 사람의 JOB과 이름 연봉을 출력하세요.
--4. JOB이 CLERK인 사람 중 DEPTNO가 30인 사람의 이름, 직책, 부서번호를 출력하세요.
--5. 연봉이 2000에서 3000 사이에 있는 사람의 부서번호, 이름, 연봉을 출력하세요.

select empno, sal from emp where sal < 2000;
select ename, sal, nvl(comm,0), nvl(comm,0) + sal from emp where (nvl(comm,0) + sal) < 1500;
select job, ename, sal from emp where mgr is null;
select ename, job, deptno from emp where job = 'CLERK' and deptno = '30';
select deptno, ename, sal from emp where sal > 2000 and sal < 3000;

--과제 : 아래의 형식으로 데이터를 나타내세요. 
--1. ename은 현재 연봉이 @@@만원 인데, 최근에 5% 인상된 금액이며, 작년 연봉은 @@@만원이었습니다. 
--2. enmae의 입사일은 hiredater 입니다. 
--3. 직책인 @@@인 @@@는 부서번호가 @@@입니다.
--4. @@@님은 현재 연봉과 보너스(comm)의 합산액은 @@@입니다.

select ename||'은 현재 연봉이'||sal||'만원 인데, 최근에 5% 인상된 금액이며, 작년 연봉은'||(sal-(sal*0.05))||'만원이었습니다.' from emp;
select ename ||'의 입사일은 '|| hiredate ||'입니다.' from emp;
select '직책이'||job||'인 '||ename||'은 부서번호가 '||deptno||'입니다.' from emp;
select ename||'님은 현재 연봉과 보너스의 합산액은 '|| (nvl(comm,0) + sal) ||'만원 입니다' from emp;
