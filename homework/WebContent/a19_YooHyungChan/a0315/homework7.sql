-- 과제
-- sal을 연봉이라고 할 때, 이달 급여분(1/13)을 처리하시오, 단 이달은 보너스가 있는 달입니다.
-- 출력내용 : 사번, 연봉, 이달급여, 보너스, 총급여액(급여와 총급여액은 10단위로 반올림처리한다.)

select empno, round(sal,-1), sal/13, nvl(comm,0), round((sal+nvl(comm,0)),-1) from emp;

/*
숙제 
sal를 기준으로
1000미만			-10%보너스
1000~2000미만		-20%보너스
2000~3000미만		-30%보너스
4000~5000미만		-40%보너스
5000~이상			-50%보너스
지급하기로 했다. 함수를 활용해서 아래 내용을 처리하시오
사번 이름 연봉 보너스(%) 보너스
*/
select empno, ename, sal, (trunc(sal/1001,0)+1)*10||'%' 연봉기준보너스 ,nvl(comm,0) from emp;

/*
숙제
사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로 했다.
부서번호가 10,30 ==> 1팀
부서번호가 20,40 ==> 2팀
으로 나누고 다음과 같이 출력하세요
부서번호 사원번호 이름 팀명
*/
select deptno , empno, ename, deptno from emp 
where mod(deptno,40)=10 or mod(deptno,40)=30;

select deptno, empno, ename from emp
where mod(deptno,40)=20 or mod(deptno,40)=40;
 
 -- 과제) substr을 활용 하여  JOB이 MAN으로 끝나는 데이터를 출력하세요!!
 select * from emp
 where substr(job,1,length(job)) like'%MAN'; 
