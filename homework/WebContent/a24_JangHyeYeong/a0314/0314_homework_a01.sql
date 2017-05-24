
/****과제****/
-- 1. ename은 현재 연봉인 @@@만 원인데, 최근에 5%인상된 금액이며, 원래 작년 연봉은 @@@만원 이었습니다.
-- 2. ename의 입사일은 hiredate입니다.
-- 3. 직책인 @@@인 @@@는 부서번호가 @@@입니다.
-- 4. @@@님은 현재 연봉과 보너스(comm)의 합산액은 @@@입니다.


/****과제답****/

select ename||'은 현재 연봉인 '||sal*1.05||'만 원인데, 최근에 5% 인상된 금액이며, 원래 작년 연봉은 '||sal||'만 원 이었습니다.' from emp;
select ename || '의 입사일은 ' || hiredate ||'입니다.' from emp;
select '직책이 '|| job || '인 '|| ename ||'는 부서번호가 '||deptno||'입니다.' from emp;
select ename||'님은 현재 연봉과 보너스('||nvl(comm,0)||'만원)의 합산액은 '|| (sal+nvl(comm,0)) ||'만 원입니다.' from emp;

select * from emp;
