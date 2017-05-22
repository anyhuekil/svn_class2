
/*
숙제
연봉에 따른 등급체계를 나누려고 한다. 
DECODE를 활용해서,
	1000 미만 F등급			성과급 3%
	1000~2000 미만 E등급	성과급 5%
	2000~3000 미만 D등급	성과급 7%
	3000~4000 미만 C등급	성과급 4%
	4000~5000 미만 B등급	성과급 3%
	5000~6000 미만 A등급	성과급 2%
	이름	부서	연봉	연봉등급	성과급	총액(연봉+성과급)
*/
SELECT ENAME, DEPTNO, SAL, DECODE(TRUNC(SAL,-3),1000,'A',5000) FROM EMP;


/*
숙제) 입사 분기 기준 표시(1/4,2/4,3/4,4/4) 입사 분기를 표기
사원번호, 이름, 입사(년/월), 입사분기
*/
SELECT EMPNO 사원번호, ENAME 이름, TO_CHAR(HIREDATE,'YY"년 "MM"월"') "입사(년/월)", CASE WHEN TO_NUMBER(TO_CHAR(HIREDATE,'MM'),'99') BETWEEN 1 AND 3 THEN '1/4'
							WHEN TO_NUMBER(TO_CHAR(HIREDATE,'MM'),'99') BETWEEN 4 AND 6 THEN '2/4'
							WHEN TO_NUMBER(TO_CHAR(HIREDATE,'MM'),'99') BETWEEN 7 AND 9 THEN '3/4'
							WHEN TO_NUMBER(TO_CHAR(HIREDATE,'MM'),'99') BETWEEN 10 AND 12 THEN '4/4'
							ELSE '--'
							END 분기 FROM EMP ;
