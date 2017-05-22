/*
	과제 1.
	sal을 연봉이라고 할때, 이달 급여분을 처리(1/13), 단 이달은 보너스 달
	사번, 연봉, 이달급여, 보너스, 총금액
	
	과제 2.
	sal 기준으로
	1000 미만		- 10% 보너스
	1000~2000미만	- 20% 보너스
	2000~3000미만	- 30% 보너스
	3000~4000미만	- 40% 보너스
	4000~5000미만	- 50% 보너스
	5000~			- 60% 보너스
	지급할때, 함수를 활용해서 처리
	사번, 이름, 연봉, 보너스(%) 보너스 보너스+연봉
	
	과제 3.
	사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로 했다.
	부서번호가 10,30 ==> 1팀
	부서번호가 20,40 ==> 2팀
	부서번호 사원번호 이름 팀 순으로 출력
	
	과제 4.
	@@@님 입사일은 @@년 @@월 @@일 이고 현재 연봉은 @@@만원 입니다.
	column Name empinfo
	
	과제 5.
	substr을 이용하여 job이 man 으로 끝나는 data를 출력(와일드카드 말고)
	
	과제 6.
	instr()을 이용하여 입사일이 12월인 data를 이름 입사일 순으로 출력
*/

-- 과제 1.
select empno, sal, sal/13 "이달 급여", comm, round(sal/13 + nvl(comm,0),-2) "총금액" from emp;

-- 과제 2.
select empno "사번", ename "이름", sal "연봉", ceil((sal/1000))*10||'%' "보너스(%)", ceil((sal/1000))*0.1*sal "보너스",
		ceil((sal/1000))*1.1*sal "연봉+보너스" from emp;
		
-- 과제 3.
select deptno "부서번호", empno "사원번호", ename "사원명", (mod((deptno+2),4)/2)+1 "팀번호" from emp;

-- 과제 4.
select ename||'님 입사일은 '||substr(hiredate,1,2)||'년 '||substr(hiredate,4,2)||'월 '||substr(hiredate,7,2)||
		'일이고 현재 연봉은 '||sal||'만원 입니다.' Empinfo from emp;
		
-- 과제 5.
select * from emp where substr(job,length(job)-2,3)='MAN';

-- 과제 6.
select ename "이름", hiredate "입사일" from emp where instr(hiredate,'12',1,1)=4 order by hiredate asc;