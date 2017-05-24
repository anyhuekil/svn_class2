
/*
숙제 
SAL을 기준으로
1000 미만			- 10% 보너스
1000~2000미만		- 20% 보너스
2000~3000미만		- 30% 보너스
3000~4000미만		- 40% 보너스
4000~5000미만		- 50% 보너스
5000 이상			- 60% 보너스
지급하기로 했다. 함수를 활용해서. 아래 내용을 처리하시오.
사번	이름	연봉	보너스(%)	보너스

*/
SELECT EMPNO 사번, ENAME 이름, SAL 연봉, 10*(FLOOR(SAL*0.001)+1) "보너스(%)", SAL*0.1*(FLOOR(SAL*0.001)+1) 보너스 
FROM EMP;

/*
숙제
사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로 했다.
부서번호가 10, 30 ==> 1팀
부서번호가 20, 40 ==> 2팀
으로 나누고 다음과 같이 출력하세요

부서번호	사원번호	이름		팀명
*/
SELECT DEPTNO 부서번호, EMPNO 사원번호, ENAME 이름, MOD(MOD(DEPTNO*0.1,2)+1,2)+1||' 팀' 팀명
FROM EMP;

-- 과제) 함수를 이용하여 다음 내용을 출력하세요..
-- @@@님	입사일	@@년 @@월 @@일 이면, 현재 연봉은 @@@ 만원 받고 있습니다.
-- column명	empinfo
SELECT ENAME||'님 입사일 '|| SUBSTR(HIREDATE,1,2)||'년 '||SUBSTR(HIREDATE,4,2)||'월 '||SUBSTR(HIREDATE,7,2)||
'일 이면, 현재 연봉은 '||SAL||' 만원 받고 있습니다.' EMPINFO FROM EMP;
-- 과제)substr을 활용하여 JOB이 MAN으로 끝나는 데이터를 출력하세요!
SELECT * FROM EMP WHERE SUBSTR(JOB,LENGTH(JOB)-2,3)='MAN';  

/*
숙제
입사일이 10월인 데이터를 이름과 입사일을 출력하세요. INSTR()을 활용.
*/
SELECT ENAME, HIREDATE FROM EMP WHERE INSTR(HIREDATE,'12',4,1)=4;
