
/*
1. emp중에 급여가 2000미만이 되는 사원 정보중에 사번과 급여를 출력하라.
2. 연봉과 보너스의 합산 금액이 1500미만인 사람의 이름, 연봉, 보너스, 합산액을 출력하세요.
3. mgr이 null인 사람의 job과 이름 연봉을 출력하세요
4. job이 clerk인 사람중 deptno가 30인 사람의 이름, 직책, 부서번호를 출력하세요. 
5. 연봉이 2000에서 3000사이에 있는 사람의 부서번호, 이름, 연봉을 출력하세요.
*/
select empno,sal from emp
where sal<2000;
select ename, sal, nvl(comm,0), (sal+nvl(comm,0)) from emp
where (sal+nvl(comm,0))<1500;

select job, ename, sal from emp
where mgr is null;

select ename, job, deptno from emp
where job= 'CLERK' and deptno = 30;

select deptno, ename, sal from emp
where sal>=2000 and sal<=3000;
