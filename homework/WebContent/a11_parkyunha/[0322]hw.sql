/*
숙제1
1. 입사일 분기별로 가장 높은 연봉을 받는 사람을 출력하세요.
2. 연봉이 3000이상인 사람중에, 등급(테이블활용도 가능)을 나누어서
	해당 등급별 최고 연봉을 받는 사람을 이름, 등급, 연봉을 출력하세요.
*/
-- 1번
select 
	ename 	이름, 
	sal		연봉, 
	floor(to_number(to_char(hiredate, 'MM'))/4+1) 분기
from 
	emp
where 
	(
		floor(to_number(to_char(hiredate, 'MM'))/4+1), 
		sal
	) 
	in (
		select 
			floor(to_number(to_char(hiredate, 'MM'))/4+1), 
			max(sal)
		from 
			emp
		group by
			floor(to_number(to_char(hiredate, 'MM'))/4+1)
		)
order by 
	분기;


select
	floor(to_number(to_char(hiredate, 'MM'))/4+1) 분기,
	max(sal)
from 
	emp
group by
	floor(to_number(to_char(hiredate, 'MM'))/4+1);

-- 2번
select 
	e.ename, 
	g.GRADE, 
	e.sal
from 
	emp e, 
	salgrade g
where 
	(
		g.grade, 
		e.sal
	)
	in (
		select 
			g.grade, 
			max(e.sal)
		from 
			emp e, 
			salgrade g
		where 
			e.sal between g.LOSAL and g.HISAL
		group by 
			g.grade
	)
	and e.sal >= 3000;

select g.grade, max(e.sal)
from emp e, salgrade g
where e.sal between g.LOSAL and g.HISAL
group by g.grade;

/*
숙제2
부서번호가 30인 사람 중에, 가장 나중에 입사한 사람보다 연봉이 많으면 출력하세요.
*/
select 
	ename, 
	deptno, 
	sal
from 
	emp
where
	deptno = 30
	and sal >= 
			(select 
				sal 
			 from 
				emp 
			 where 
			 	hiredate >= ALL(select hiredate from emp));
/*
ORA-01796:	this operator cannot be used with lists
Cause:	A relational operator is not allowed in this context. When comparing lists, use only an operator that tests for equivalence, such as =, !=, or IN.
Action:	Rephrase the query so that it only compares lists for equivalence. For example, the following clause is invalid:

WHERE (A,B) > ((C,D), (E,F)) 
It may be necessary to compare individual columns separately. For example, to see if A and B are respectively greater than C and D, use WHERE A>B AND C>D instead of WHERE (A,B)>(C,D).
*/
select ename, hiredate
from emp
where (ename,hiredate) >= ALL(select ename, hiredate from emp); 
/*
숙제3
직급이 'SALESMAN'인 사원이 받는 급여들의 최소 급여보다 많이 받는 사원들의 이름과 급여를
출력하되 부서번호 20번인 사원은 제외한다. 
1) (ANY연산자 이용)
2) min() 함수 사용

*/
select 
	ename, 
	sal
from 
	emp
where 
	sal >= ANY( select sal from emp where job='SALESMAN');  
-- 2) sal >= ( select min(sal) from emp where job='SALESMAN');

/*
숙제 4
다음과 같은 형태의 태이블을 구성하세요.
이름(name)	번호(no)		입사일(credate)-문자열 	올해기준 근무연수(workyears)	
						@@@@년 @@월 @@일		@@@@
new_emp 로 생성
*/
create table new_emp
as
select
	ename	name,
	empno	no,
	to_char(hiredate, 'YYYY"년" MM"월" DD"일"')		credate,
	floor(months_between(sysdate, hiredate)/12)+1	workyears
from 
	emp;

select * from new_emp;
