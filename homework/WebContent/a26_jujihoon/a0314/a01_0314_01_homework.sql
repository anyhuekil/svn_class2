select ename||'은 현재 연봉이 '||sal * 1.05||'만원인데, 최근에 5% 인상된 금액이며, 작년 연봉은 '||sal||'만원이었습니다.' from emp;
select ename||'의 입사일은 '||hiredate||' 입니다.' from emp;
select '직책이 '||job ||'인 '||ename ||'은(는) 부서번호가 '||deptno||'입니다.' from emp;
select ename||'님은 현재 연봉과 보너스의 합산액은 '||(nvl(comm,0) + sal)||'입니다.' from emp; 