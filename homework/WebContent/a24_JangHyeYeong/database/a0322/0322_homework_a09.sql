/*
과제1
1. 입사일 분기별로 가장 높은 연봉을 받는 사람을 출력하세요.
2. 연봉이 3000이상인 사람 중에, 등급(테이블활용도 가능)을 나누어서 
해당 등급별로 최고 연봉을 받는 사람을 이름, 등급, 연봉을 출력하세요


*/


/********과제1_1**********/
select ename "이름", sal "연봉", floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1 "입사 분기" from emp
where (sal,floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1) 
in (select max(sal),floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1 from emp 
group by floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1); --입사분기별


select max(sal),floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1 
from emp
group by floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1;

select max(sal) from emp where floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1=1; --2450
select max(sal) from emp where floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1=2; --2975
select max(sal) from emp where floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1=3; --1500
select max(sal) from emp where floor((TO_CHAR(HIREDATE,'MM')-1)/3)+1=4; --5000


/**********과제 1_2*********/
SELECT ENAME, GRADE, SAL FROM EMP, SALGRADE 
WHERE (GRADE, SAL) IN(SELECT GRADE, MAX(SAL) FROM EMP,SALGRADE WHERE SAL BETWEEN LOSAL AND HISAL AND SAL>=3000
GROUP BY GRADE);




/*
과제2
 1. 부서번호가 30인 사람 중에, 가장 나중에 입사한 사람보다 연봉이 많으면 출력하세요.
 2. 직급이 'SALESMAN'인 사원이 받는 급여들의 최소 급여보다 많이 받는 사람들의 이름과 급여를
 출력하되 부서번호 20번인 사원은 제외한다. (ANY 연산자 이용)
*/

/********과제2_1*********/
SELECT * FROM EMP WHERE SAL>=ALL(SELECT SAL FROM EMP WHERE HIREDATE=(SELECT MAX(HIREDATE) FROM EMP WHERE DEPTNO=30));


/*********과제2_2*********/

SELECT ENAME, SAL, DEPTNO FROM EMP 
WHERE DEPTNO!=20 AND SAL>ANY(SELECT SAL FROM EMP WHERE JOB='SALESMAN');

/*
과제3
다음과 같은 형태의 테이블을 구성하세요.
이름(name) 번호(no) 입사일(credate)-문자열 올해기준근무연수(workyears)
					@@@년 @@월 @@일 				@@@@
new_emp로 구성하세요.
*/


/***테이블틀 만듦**/
create table new_emp as select ename name, empno no, 
'                    ' credate,
0 workyears from emp where 1=0;

select * from new_emp;

/***데이터 삽입**/
insert into new_emp 
select ename name, empno no, 
to_char(hiredate, 'YYYY"년" MM"월" DD"일"') credate,
to_char(sysdate,'YYYY')-to_char(hiredate,'YYYY') workyears from emp;

select ename name, empno no, 
to_char(hiredate, 'YYYY"년" MM"월" DD"일"') credate,
to_char(sysdate,'YYYY')-to_char(hiredate,'YYYY')||'년' workyears from emp;


select * from new_emp;



