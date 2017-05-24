-- 과제)
-- sal를 연봉이라고 할 때, 이달 급여분(1/13)을 처리하시오. 단 이달은 보너스가 있는 달입니다.
-- 출력내용: 사번, 연봉, 이달급여, 보너스, 총급여액(급여와 총급여액은 10단위로 반올림처리한다.)
select empno, sal, round(sal/13,-1), nvl(comm,0), round((sal/13)+nvl(comm,0),-1) from emp;


/*
과제 sal를 기준으로 
1000미만        - 10%보너스
1000~2000미만  - 20%보너스
2000~3000미만  - 30%보너스
3000~4000미만  - 40%보너스
4000~5000미만  - 50%보너스
5000이상         - 60%보너스
지급하기로 했다.. 함수를 활용해서, 아래 내용을 처리하시오.
사번 이름 연봉 보너스(%) 보너스
*/
select empno, ename, nvl(comm,0) from emp;
select empno, ename, sal, 
	decode(trunc(sal/1000,0), 0,'10%',
				1,'20%',
				2,'30%',
				3,'40%',
			    4,'50%',
				'60%') 보너스퍼센트,
	sal*(	decode(trunc(sal/1000,0), 0,'0.1',
				1,'0.2',
				2,'0.3',
				3,'0.4',
			    4,'0.5',
				'0.6'))	보너스
from emp;
/*
과제
사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로 했다.
부서번호가 10, 30 ==> 1팀
부서번호가 20, 40 ==> 2팀
으로 나누고 다음과 같이 출력하세요.
부서번호  사원명  이름  팀명 
*/
select deptno, empno, ename,
	CASE WHEN DEPTNO=10 and DEPTNO=30 THEN '1팀'
	     ELSE '2팀'
	END TEAM
from emp;


-- 과제) 함수를 이용하여 다음 내용을 출력하세요..
-- @@@님 입사일은 @@년 @@월 @@일 이면, 현재 연봉은 @@@만원 받고 있습니다.
-- column명 empinfo
select ename ||'님 입사일은 '|| 
substr(hiredate,1,2) ||'년 '|| substr(hiredate,4,2)||'월 '|| substr(hiredate,7,2) ||'일 이며, 현재연봉은 '||
sal ||'만원 받고 있습니다.' empinfo from emp;
-- 과제) substr을 활용하여 JOB이 MAN으로 끝나는 데이터를 출력하세요!!
select * from emp
where substr(job,(length(job)-2),3) = 'MAN';

/*
과제
입사일이  12월인 데이터를 이름과 입사일을 출력하세요  instr()를 활용
*/
select ename, hiredate from emp
where instr(hiredate,'12')=4;

