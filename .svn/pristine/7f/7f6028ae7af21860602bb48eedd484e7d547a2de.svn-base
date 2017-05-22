--숙제1 : 사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로 했다.
--부서번호가 10, 30 --> 1팀
--부서번호가 20, 40 --> 2팀으로 나누고 다음과 같이 출력하세요.
--부서번호  사원번호  이름   명

select deptno, empno, ename, case when deptno in (10,30) then 'team1' when deptno in (20,40) then 'team2' end as team from emp;

--숙제2 : 함수를 이용하여 다음 내용을 출력하세요.
--@@@님	입사일	@@년 @@월 @@일 이면, 현재 연봉은 @@@ 만원 받고 있습니다.

select ename||'님 입사일'||substr(hiredate,1,2)||'년'||substr(hiredate,4,2)||'월'||
substr(hiredate,4,2)||'일 이며 현재 연봉은 '||sal||'만원을 받고 있습니다.' from emp;

--숙제3 : substr을 활용하여 JOB이 MAN으로 끝나는 데이터를 출력하세요

select * from emp where substr(job,length(job)-2,3) = 'MAN';

--슥제4 : 입사일이 12월인 데이터를 이름과 입사일을 출력하세요 instr()활용
select ename, hiredate from emp where instr(hiredate,'12') = 4;
