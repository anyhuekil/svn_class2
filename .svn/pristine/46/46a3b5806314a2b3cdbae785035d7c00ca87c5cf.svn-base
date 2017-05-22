-- 과제
-- 1. ename은 현재 연봉이 @@@만원인데, 최근에 5% 인상된 금액이며, 작년 연봉은 @@@만원입니다.
	select ename || '은 현재 연봉이 ' || sal || '만원인데, 최근에 5% 인상된 금액이며, 작년 연봉은 ' || sal / 1.05 ||'만원입니다.' from emp;
-- 2. enmae의 입사일은 hiredate입니다.
	select ename || '의 입사일은 ' || hiredate || '입니다.' from emp;
-- 3. 직책인 @@@인 @@@는 부서번호가 @@@입니다.
	select '직책인 ' || job || '인 ' || ename || '는 부서번호가 ' || deptno || '입니다.' from emp;
-- 4. @@@님은 현재 연봉과 보너스의 합산액은 @@@입니다.
	select ename  || '님은 현재 연봉과 보너스의 합산액은 ' || (sal+nvl(comm,0)) || '만원 입니다.' from emp;

	-- 연습예제1. EMP 중에 급여가 2000 미만이 되는 사원 정보 중에 사번과 급여를 출력하라
	select empno, sal from emp where sal<2000;
-- 연습예제2. 연봉과 보너스의 합산 금액이 1500 미만인 사람의 이름, 연봉, 보너스, 합산액을 출력하세요
	select ename, sal, nvl(comm,0), sal+nvl(comm,0) from emp where sal+nvl(comm,0)<1500; 
-- 연습예제3. mgr이 null인 사람의 job과 이름, 연봉을 출력하세요
	select ename, job, sal from emp where mgr is null;
-- 연습예제4. job이 clerk인 사람 중 deptno가 30인 사람의 이름, 직책, 부서번호를 출력하세요
	select ename, job, deptno from emp where job='CLERK' and deptno=30;
-- 연습예제5. 연봉이 2000에서 3000 사이에 있는 사람의 부서번호, 이름, 연봉을 출력하세요
	select deptno, ename, sal from emp where sal>=2000 and sal<=3000; 