/*과제
1. ename은 현재 연봉이 @@@만원인데, 최근에 5% 인상된 금액이며, 작년 연봉은 @@@만원이었습니다.
2. ename의 입사일은 hiredate 입니다.
3. 직책인 @@@인 @@@은 부서번호가 @@@ 입니다.
4. @@@님은 현재 연봉과 보너스의 합산액이 @@@입니다.
*/
select * from emp;

-- 1번
select ename||'은 현재 연봉이 '||sal||'만원인데, 최근에 5% 인상된 금액이며, 작년 연봉은 '||0.95*sal||'만원 이었습니다.' from emp;
-- 2번
select ename||'의 입사일은 '||hiredate||' 입니다.' from emp;
-- 3번
select '직책이 '||job||'인 '||ename||'은 부서번호가 '||deptno||' 입니다.' from emp;
-- 4번
select ename||'님은 현재 연봉과 보너스 합산액이 '||(sal+nvl(comm,0))||'만원 입니다.' from emp;
