/*숙제(조별과제)
1. 입사일 분기별로 가장 높은 연봉을 받는 사람을 출력하세요
2. 연봉이 3000이상인 사람 중에, 등급(테이블활용도 가능)을 나누어서 해당
 등급별 최고 연봉을 받는 사람을 이름, 등급, 연봉을 출력하세요
*/
-- 숙제 1.
SELECT CEIL(TO_NUMBER(TO_CHAR(HIREDATE,'MM'),'99')/3) "분기", MAX(SAL) FROM EMP 
GROUP BY CEIL(TO_NUMBER(TO_CHAR(HIREDATE,'MM'),'99')/3);
-- 숙제 2.
SELECT *
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;

SELECT A.ENAME, A.GRADE, A.SAL
FROM (
SELECT *
FROM EMP E, SALGRADE S
WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL) A
WHERE SAL>=3000;

숙제
1. 부서번호가 30인 사람 중에, 가장 나중에 입사한 사람보다 연봉이 많으면 출력하세요.
2. 직급이 'SALESMAN'인 사원이 받는 급여들의 최소 급여보다 많이 받는 사원들의 이름과 급여를 출력하되, 부서번호 20번인 사원은 제외한다 (ANY 연산자 이용)
*/
-- 확인예제1
SELECT EMPNO, SAL, HIREDATE
FROM EMP
WHERE HIREDATE>=ALL(
SELECT HIREDATE
FROM EMP
WHERE SAL<3000);

-- 숙제 1.
SELECT ENAME, SAL, HIREDATE, DEPTNO
FROM EMP
WHERE SAL>ALL(
SELECT SAL
FROM EMP
WHERE HIREDATE=(SELECT MAX(HIREDATE)
					FROM EMP))
AND DEPTNO=30;

-- 숙제 2.
SELECT ENAME, SAL,DEPTNO
FROM EMP
WHERE SAL>ANY(
SELECT MIN(SAL)
FROM EMP
WHERE JOB='SALESMAN') AND DEPTNO!=20;

/*
숙제
다음과 같은 형태의 테이블을 구성하세요.
이름(name) 번호(no) 입사일(credate)-문자열		올해기준근무연수(2017)
					@@@@년 @@@월 @@@일		@@@
new_emp로 구성하세요
					
*/
CREATE TABLE NEW_EMP
AS(
select ename "이름", empno "번호", hiredate "입사일", CEIL(MONTHS_BETWEEN(SYSDATE,HIREDATE)/12)+1 "올해기준근무연수(2017)" FROM EMP);
SELECT * FROM NEW_EMP;
