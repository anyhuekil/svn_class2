-- 과제1. (homework 1)

	
-- 1). 입사일 분기별로 가장 높은 연봉을 받는 사람을 출력하세요.
	select max(sal) from emp group by floor(to_char(hiredate,'MM')/4+0.25)+1;
	select ename 이름, floor(to_char(hiredate,'MM')/4+0.25)+1||'분기' 분기, hiredate 입사일 from emp;
	
	select ename 이름, floor(to_char(hiredate,'MM')/4+0.25)+1||'분기' 분기, hiredate 입사일, sal 연봉 from emp
	where (sal) in ( select max(sal) from emp group by floor(to_char(hiredate,'MM')/4+0.25)+1 )
	order by floor(to_char(hiredate,'MM')/4+0.25)+1;

-- 2). 연봉이 3000이상인 사람 중에 등급(테이블 활용도 가능)을 나누어서 해당 등급별 최고 연봉을 받는 사람을 이름, 등급 연봉을 출력하세요.
	select * from emp, salgrade;
	select e.ename 이름, s.grade 등급, e.sal 연봉 from emp e, salgrade s
		where 
		(e.sal, s.grade) in( select max(e.sal), s.grade from emp e, salgrade s where (e.sal between s.losal and s.hisal) group by s.grade)
		and e.sal>=3000 ;



-- 과제2.(homework2)
-- 1). 부서번호가 30인 사람중에 가장 나중에 입사한 사람보다 연봉이 많으면 출력하세요
		select sal from emp where deptno=30 and hiredate=(select max(hiredate) from emp where deptno=30);
		select max(sal), max(hiredate) from emp where deptno=30 group by hiredate;
-- 부서번호가 30인 사람중에서 가장 나중에 입사한 사람보다 연봉이 많으면 출력
		select * from emp where sal > all(select sal from emp where deptno=30 and hiredate=(select max(hiredate) from emp where deptno=30));
-- 가장 나중에 입사한 사람보다 연봉이 많은 사람들 중 부서번호가 30인 사람들을 출력	
		select * from emp where deptno=30 and sal > all(select sal from emp where hiredate=(select max(hiredate) from emp));


-- 2). 직책이 SALESMAN인 사원이 받는 급여들의 최소 급여보다 많이 받는 사원들의 이름과 급여를 출력하되 부서번호 20번인 사원은 제외한다 (ANY 연산자 이용)
	select ename, sal from emp where deptno!=20 and sal	> any(select min(sal) from emp where job='SALESMAN');


/* 과제3. (homework 3)
 다음과 같은 형태의 테이블 NEW_EMP을 구성하세요.
 이름(name), 번호(no), 입사일(credate)-문자열(@@@@년 @@@월 @@@일) 올해기준근무연수(workyears)
*/
	create table new_emp
		as select ename name, empno no, to_char(hiredate, 'YYYY"년" MM"월" DD"일"') credate, to_number(to_char(sysdate, 'YYYY'))-to_number(to_char(hiredate,'YYYY')) workyears from emp; 
	select * from new_emp;	 
	
