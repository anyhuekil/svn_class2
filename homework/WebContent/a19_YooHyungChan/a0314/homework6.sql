/*
과제
아래의 형식으로 데이터를 나타내시오.
1. ename은 현 연봉인 @@@만원 인데, 최근에 5% 인상된 금액이며, 작년 연봉은 @@@만원 이었습니다.
2. ename의 입사일은 hiredate 입니다.
3. 직책인 @@@인 @@@는 부서번호가 @@@입니다.
4. @@@님은 현재 연봉과 보너스(comm)의 합산액은 @@@입니다.
*/
select ename||'은 현재 연봉이 '||sal||'만원 인데, 최근에 5% 인상된 금액이며, 작년 연봉은 '||sal*0.95||'만원 이었습니다.' from emp;
select ename||'의 입사일은 '||hiredate||'입니다.' from emp;
select '직책이'||job||'인 '||ename||'는 부서번호가 '||deptno||'입니다.' from emp;
select ename||'님은 현재 연봉과 보너스 '||nvl(comm,0)||'의 합산액은 '||(nvl(comm,0)+sal)||'입니다' from emp;



