/*

	조별과제.
	1. 입사일을 분기별로 가장높은 연봉을 받는사람을 출력하세요
	2. 연봉이 3000인 사람중에, 등급(테이블활용도가능)을 나누어서 해당등급별 최고연봉을 받

는사람을 이름 등급 연봉 출력
	
*/

	select ename, job, sal from emp
	where (job, sal) in (select job, min(sal) 
		from emp 
		group by job
	);
	
	select ename, sal from emp
		where (sal,floor(to_number(to_char(hiredate,'mm'))/4 + 1)) in (select max

(sal), floor(to_number(to_char(hiredate,'mm'))/4 + 1) 
			from emp
			group by floor(to_number(to_char(hiredate,'mm'))/4 + 1)
	);

	select e.ename, sg.grade, e.sal from emp e, salgrade sg
		where (e.sal, sg.grade) in ( select e.sal, sg.grade 
		from emp e, salgrade sg 
		where e.sal between sg.LOSAL and sg.HISAL 
		and e.sal >3000
	);
	select sal from emp;

	
/*
숙제.
	부서번호가 30인사람중에 , 가장 나중에 입사한 사람보다 연봉이 많으면 출력.
	*/			
	select empno, sal, hiredate
	from emp
	where hiredate >= all(select hiredate 
				from emp
				where sal<3000 );
		

	/*
		t숙제: 
			1.부서번호가 30인사람중에, 가장 나중에 입사한 사람보다 연봉이 많으면 출력.
			2. 직급이 'SALESMAN'인 사원이 받는 급여들의 
				최소급여보다 많이 받는 사원들의 이름과 급여를 출력하되
				부서번호 20번인 사원은 제외한다. (ANY연산자 이용.)
	
	*/
	
	
		select ename, sal, hiredate from emp
		where sal >= all(select sal 
							from emp 
							where deptno = 30
		);
		
		select ename, sal from emp 
		where deptno!= 20 
		and sal >= any(select sal 
							from emp 
							where job = 'SALESMAN' and sal >= (select min(sal) from emp));


/*
숙제: 다음과 같은 형태의 테이블을 구성하세요.
이름name 번호no 입사일credate_ 문자열로! 올해기준근무연수 workyears2017
@@@		@@		@@@년	@@월	@@일		@@@@
new_emp로 구성하세요.
	
*/
create table new_emp
as select ename name, empno no, to_char('YYYY/MM/DD') credate, floor(months_between(sysdate, hiredate)/12) workyears2017
	from emp
	where 1 = 0;
	




