select '1번. ' ||ename|| '은 현재 연봉인' ||sal*1.1|| '만원 인데, 최근에 10% 인상된 금액이며, 작년 연봉은 ' ||sal|| '만원 이었습니다' from emp;
select '2번. ' ||ename|| '의 입사일은 ' ||hiredate|| '입니다.' from emp;
select '3번. 직책이 ' ||job|| '인 ' ||ename|| '은 부서번호가 ' ||deptno|| '입니다.' from emp;
select '4번. ' ||ename|| '님은 현재 연봉과 보너스를 합산 금액은 ' 
		||(nvl(comm,0)+sal)|| '입니다.' from emp; 
		
