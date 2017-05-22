-- 과제
-- sal을 연봉이라고 할때, 이달 급여분(1/13)을 처리하시오, 단 이달은 보너스가 있는 달입니다.
-- 출력내용 : 사번, 연봉, 이달급여, 보너스, 총급여액(급여와, 보너스 10단위로 반올림처리한다.)
select empno, sal, round((sal / 12), 1) "Mon_sal", NVL(comm,0), round(((sal /12) + NVL(comm,0)),1) "TOT" from emp

/*
숙제 sal를 기준으로 
1000미만			- 10% 보너스
1000~2000미만	- 20% 보너스
2000~3000미만	- 30% 보너스
4000~5000미만	- 40% 보너스
5000이상			- 50% 보너스를
지급하기로 했다... 함수를 활용해서 아래 내용을 처리하시오.
사번 이름 연봉 보너스(%) 보너스
*/
select empno, ename, sal, TRUNC(sal/10000 + 0.09, 1) as bonus1, TRUNC(sal/10000 + 0.09, 1) * sal as bonus2 from emp;

/*
 * 숙제
 * 사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로 했다.
 * 부서번호가 10, 30 ==> 1팀
 * 부서번호가 20, 40 ==> 2팀
 * 으로 나누고 다음과 같이 출력하세요.
 * 부서번호 	사원명 	이름 	팀명 
 * */
select deptno, job , ename,
case when mod(To_NUMBER(substr(deptno, 1 , 1)), 2) = 1 then '1팀'
when mod(To_NUMBER(substr(deptno, 1, 1)), 2) = 0 then '2팀'
end as TeamName from emp;

--과제) 함수를 이용하여 다음 내용을 출력하세요...
-- @@@님 입사일 @@ 년 @@월 @@일 이면, 현재 연봉은 @@@ 만원 받고 있습니다.
-- column 명 empinfo
-- 과제) substr을 활용 하여 JOB이 MAN으로 끝나는 데이터를 출력하세요 !
select substr(ename, 1, length(ename)) || '님 입사일' ||
substr(hiredate, 1, 2) || '년' || substr(hiredate, 4, 2) || '월'
|| substr(hiredate, 7, 2) || '일 이며, 현재 연봉은 ' || sal ||'만원 받고 있습니다.' as message from emp; 
