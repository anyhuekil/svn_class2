/*과제
아래의 형식으로 데이터를 나타내세요
1. ename은 현재 연봉이 @@@ 만원 인데, 최근에 5% 인상된 금액이며, 작년 연봉은 @@@만원 이었습니다
2. ename의 입사일은 hiredata 입니다
3. 직책@@@인 @@@은 부서번호가 @@@입니다
4. @@@님은 현재 연봉과 보너스(comm)의 합산액은 @@@만원입니다

*/
select * from emp;
-- 1번문제
select ename||'은 현재 연봉이 '||sal||' 만원 인데, 최근 5% 인상된 금액이며, 작년 연봉은 '|| (sal-sal*5/105) ||' 만원 이었습니다' from emp;
-- 2번문제
select ename||'의 입사일은 '||hiredate||' 입니다' from emp;
-- 3번문제
select '직책 '||job||'인 '||ename||'은 부서번호가 '||deptno||'입니다' from emp;
-- 4번문제
select ename||'님의 현재 연봉과 보너스 ('||nvl(comm,0)||')의 합산액은 '|| (nvl(comm,0)+sal) ||'만원 입니다' from emp;


/*
연습예제
1. emp중에 급여가 2000미만이되는 사원정보 중에 사번과 급여를 출력
2. 연봉과 보너스의 합산 금액이 1500미만인 사람의 이름, 연봉, 보너스, 합산액을 출력
3. mgr이 null인 사람의 job과 이름 연봉을 출력
4. job이 CLERK인 사람중 deptno가 30인 사람의 이름, 직책, 부서번호
5. 연봉이 2000에서 3000사이에 있는 사람의 부서번호, 이름, 연봉을 출력
*/
select * from emp;
select empno, sal from emp where sal<2000;
select ename, sal, comm, sal+nvl(comm,0) from emp where sal+nvl(comm,0)<1500;
select job, sal from emp where mgr is null;
select ename, job, deptno from emp where job='CLERK' and deptno=30;
select deptno, ename, sal from emp where sal>=2000 and sal<=3000;
