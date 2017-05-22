/*
과제 // 완료
1. 입사일 분기별로 가장 높은 연봉을 받는 사람 출력
2. 연봉이 3000이상인 사람 중에, 등급(테이블활용도 가능)을 나누어서
	해당 등급별 최고 연봉을 받는 사람의 이름, 등급, 연봉을 출력
*/
select sal, ename,floor(to_number(to_char(hiredate,'MM'))/4)+1 분기
from emp
where (floor(to_number(to_char(hiredate,'MM'))/4)+1,sal) in (select floor(to_number(to_char(hiredate,'MM'))/4)+1,max(sal)
			from emp
			group by floor(to_number(to_char(hiredate,'MM'))/4)+1 );

create table grade02(grade char(4),
					losal number(5,0),
					hisal number(5,0)
);

insert into grade02 values('A',5000,5999);
insert into grade02 values('B',4000,4999);
insert into grade02 values('C',3000,3999);


select * from grade02;

select a.ename, b.grade, a.sal
from (select * from emp where sal>=3000) a, grade02 b
where a.sal between b.losal and b.hisal;



/*
과제 // 완료
1. 부서번호가 30인 사람중, 가장 나중에 입사한 사람보다 연봉이 많은 사람 출력
2. 직급이 'SALESMAN'인 사원들이 받는 급여의 최소 급여보다 많이 받는 사원들의 이름과 급여를 출력하되
부서번호가 20번인 사원은 제외한다(any연산자이용)
*/

select *
from emp
where deptno=30 and sal > (select sal from emp where hiredate=(select max(hiredate) from emp));


select *
from emp
where deptno=30 and sal>=(select sal from emp where hiredate>=all(select hiredate from emp));

select ename, sal
from (select * from emp where deptno!=20)
where sal >= any(select sal from emp where job='SALESMAN');





/*
과제 // 완료
다음과 같은 형태의 테이블을 구성하세요
이름(name) 번호(no) 입사일(create)-문자열 올해기준근무연수
                      @@@@년@@월@@일        @@@@
new_emp로 구성
*/

select * from new_emp;
drop table new_emp;
select 2017-(to_number(to_char(hiredate,'YYYY'),'999999')) from emp;
select to_char(hiredate,'YYYY"년"MM"월"DD"일"') from emp;


create table new_emp
as select ename name, empno no, '                        ' create01,'   ' year01
from emp
where 1=3;

insert into new_emp
			select ename, empno, to_char(hiredate,'YYYY"년"MM"월"DD"일"') create01, 2017-to_number(to_char(hiredate,'YYYY'),'99999') year01
			from emp;






