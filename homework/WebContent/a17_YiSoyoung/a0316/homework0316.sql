/* 숙제 : SAL를 기준으로 
	1000미만 - 10% 보너스
	1000~2000미만 - 20% 보너스
	2000~3000미만 -30% 보너스
	3000~4000미만 - 40% 보너스
	4000~5000미만 - 50% 보너스
	5000이상 - 60% 보너스를 지급하기로 했다. 사번, 이름, 연봉, 보너스(%), 보너스
*/
SELECT EMPNO, ENAME 이름, SAL 연봉, TRUNC(SAL/100,-1)+10 "보너스(%)", SAL*(TRUNC(SAL/100,-1)+10)*0.01 보너스
	FROM EMP;

/* 숙제
  사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로 했다.
  부서번호가 10,30 => 1팀
  부서번호가 20 => 2팀
  으로 나누고 부서번호, 사원번호, 이름, 팀명을 출력하시오.
*/
SELECT DEPTNO, EMPNO, ENAME, MOD(-DEPTNO/10,2)+2||'팀' FROM EMP;

/* 확인 예제 : 아래의 형식의 데이터를 화면에 LIST
		사번    이름   직책(이름의 문자열 수 만큼만 표시)
*/
SELECT EMPNO, ENAME, SUBSTR(JOB, 1, LENGTH(ENAME)) FROM EMP;

/* 과제 ) 함수를 이용하여 다음 내용을 출력하세요.
	@@@님  입사일  @@년@@월@@일이며, 현재 연봉은 @@만원 받고 있습니다.
	column명 empinfo
*/
SELECT ENAME||'님 입사일 '|| SUBSTR(HIREDATE,1,2)||'년'||SUBSTR(HIREDATE,4,2)||'월'|| SUBSTR(HIREDATE,7,2)
 	||'일이며 현재 연봉은 '||SAL||'만원 받고 있습니다' empinfo
	FROM EMP;

-- 과제) SUBSTR을 활용하여 JOB이 MAN으로 끝나는 데이터를 출력
SELECT * FROM EMP WHERE SUBSTR(JOB, -3, 3)='MAN';

-- 숙제 : 입사일이 12월인 데이터를 이름과 입사일을 INSTR함수를 이용해서 출력하세요
SELECT * FROM EMP WHERE INSTR(HIREDATE, '/12/',1,1)=3;