-----문제1) 연봉이 올해 전직원을 대상으로 10%올랏다...
--- 사원명, 기존연봉, 인상분, 연봉총합을 출력하세요.
 select ename, sal, sal*0.1, sal*1.1 from emp;
 
 -----문제2) 부서별로 연봉인상분을 다르게 책정.
-- 부서번호 ==>10%, 20==> 20%...인상.
-- 이름,부서명, 연봉, 인상된연봉?
select ename, job, sal, deptno, sal*(1+deptno/100) from emp;
 
 /*
아래의 형식으로 데이터를 나타내세요.
1. ename 은 현재 연봉인 @@@만원인데 , 최근데 5%인상된 금액이며, 작년 연봉은 @@@만원이었습니다.
2. ename의 입사일은 hiredate입니다.
3. 직책@@@ 인 @@@는 부서번호가 @@@입니다..
4. @@@님은 현재연봉과 보너스 (comm)의 합산액은 @@@입니다.
*/

select '1. ' ||ename || '은 현재연봉인 ' || sal || '만원인데, 최근에 5%인상된 금액이며, 작년 연봉은' || sal*100/105 || '입니다' from emp;
select '2. ' || ename || '의 입사일은 ' || hiredate|| '입니다.' from emp;
select '3. 직책' || job || '인' || ename || '는 부서번호가 ' || deptno|| '입니다.'  from emp;
select '4. ' || ename || '님은 현재연봉과 보너스 (' || comm || ') 의 합산액은 '||  (sal+ nvl(comm,0)) || '로 처리된다.' from emp;

/*
	다음의 내용을 변경된 컬럼으로 나타내라.
	
	--컬럼명	depandname 			upgradeRatio		enterCompany
	--출력데이터 (부서번호)이름 	연봉의 10% 		입사년원일.
*/
	select  '(' || deptno || ')' ||ename as depandname, sal*0.1 as upgradeRatio, 
			hiredate as enterCompany from emp;

/*
	확인 예제 1) -mgr을 동일값없이 출력하라.
				 2) job과  mgr컬럼이 동일값없이 출력하라.

*/
select * from emp;
select distinct mgr from emp;
select distinct job, mgr from emp;  --job이름이 같아도 mgr의 값이 달라서 둘다쌍으로 생각해야함.

/*	
	1)부서번호 30인 데이터를 list하세욥.
	2) 연봉이 1000미만인 데이터.
	3) ename이 SMITH인 데이터
	4) comm이 null인 데이터.  (*) - 지금까지 배운 함수활용.
	5) mgr이 7698이 아닌 데이터.

*/
select * from emp;
	select * from emp where deptno =30;
	select * from emp where sal <1000;
	select * from emp where ename = 'SMITH';
	select * from emp where nvl(comm,-1) = -1;
	select * from emp where mgr != 7698;

/*
	연습예제.
	1. emp중에 급여가 2000미만이 되는 사원정보중에 사번, 급여를 출력.
	2. 연봉과 보너스의 합산금액이 1500 미만인 사람의 이름, 연봉, 보너스, 합산액을 출력.
	3. mgr이 null인 사람의 job, 이름, 연봉을 출력.
	4. job이 CLERK인 사람중에 deptno가 30인 사람의 이름,직책, 부서번호 출력.
	5. 연봉이 2000에서 3000사이에 있는 사람의 부서번호,이름,연봉을 출력
*/
select * from emp;
select empno "사원" , sal "샐러리" from emp where sal<2000;
select ename, sal, comm, (sal + nvl(comm,0)) from emp where (sal + nvl(comm,0)) <1500;
select job, ename, sal, mgr from emp where mgr is NULL;
select ename, job, deptno from emp where job = 'CLERK' AND deptno = 30;
select deptno, ename, sal from emp where sal > 2000 and sal< 3000;



 
 
