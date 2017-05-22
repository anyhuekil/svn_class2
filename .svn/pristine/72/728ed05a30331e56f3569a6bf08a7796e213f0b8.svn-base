/*
	과제 1.
		1) 입사일 분기별 가장 높은 연봉을 받는 사람 출력
		2) 연봉이 3000 이하인 사람 중 등급을 나누어 해당 등급별 최고 연봉을 받는 사람의 이름 등급 연봉
		
	과제 2.
		1) 부서번호가 30인 사람 중, 가장 나중에 입사한 사람보다 연봉이 많으면 출력
		2) 직급이 salesman인 사원이 받는 급여들의 최소급여보다 많이 받는 20부서 사원들의 이름과 급여를 출력
	
	과제 3.
	name no credate-문자열
*/
-- 과제 1.1
select ename, sal, floor(substr(hiredate,4,2)/4)+1 "분기" from emp
	where sal in ( select max(sal) from emp group by floor(substr(hiredate,4,2)/4)+1);
-- 과제 1.2
select ename, grade, sal from emp e, salgrade g where e.sal between g.LOSAL and g.HISAL
and sal>=3000
and sal in (select max(sal) from emp e, salgrade g where e.sal BETWEEN g.LOSAL and g.HISAL group by g.grade);
-- 얘는 이래야하나

-- 과제 2.1
select * from emp where deptno = 30 and sal>(select sal from emp where hiredate=(select max(hiredate) from emp));
-- 얘도 이렇게 두번 쓰는건가
-- 과제 2.2
select ename, sal from emp where deptno=20 and sal>all(select sal from emp where job='SALESMAN');

-- 과제 3.
create table new_emp as
	select ename name,
		empno no,
		to_char(hiredate,'YYYY"년 "MON DD"일"') credate,
		floor(months_between(sysdate,hiredate)/12)+1 "근무연수" from emp;
select * from new_emp;