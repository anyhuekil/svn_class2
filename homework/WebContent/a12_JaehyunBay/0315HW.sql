--- a03-


/* 
	sal 을 연봉이라 할떄, 이달 급여분(1/13)을 처리하시오, 단 이달은 보너스가 있는 달입니다.
  	 출력내용: 사번 연봉 이달급여, 보너스, 총급여액(급여+ 보너스는 10단위로 반올림처리)
 */
 
	select empno, sal, round(sal/13 , 2), comm, (round(sal/13 , 2) + round( nvl(comm, 0) , -1)) 합계 from emp;


/*
 	숙제: sal을 기준으로 ..
	1000미만: 10% 보너스
	~2000미만 - 20% 보너스.
	~3000미만 - 30% 보너스
	~5000미만 - 40% 보너스
 	5000이상 - 50% 보너스.
	지급하기로햇다. 함수를 활용해서, 아래내용을 처리하시오.
	사번 이름 연봉 보너스(%) 보너스.
 */
 	select * from emp;
	select empno, ename, sal, (nvl(sal,0)/1000) "단위처리", 
		((floor(nvl(sal,0)/1000)+1)*10) "보너스%", 
		(sal/13) "월급" ,  
		(sal/13)* (1+((floor(nvl(sal,0)/1000)+1)*10)/100) "보너스합산" from emp;		
	
/*
	숙제: 
	사원을 부서기준으로 1팀과 2팀으로 나누어서 체육대회를 하기로했다.
	부서번호가 10, 30 => 1팀
	부서번호가 20, 40 => 2팀
	으로 나누고 다음과같이 출력하세요.
	부서번호 사원번호 이름 팀명.
*/
	select deptno, empno, ename, round(mod((-deptno/10),2) , 0)+2 ||'팀' 팀번호  from emp;
	

/*
 	과제;
		함수를 이용해서 다음의 내용을 출력하시오.
		@@@님 입사일 @@년 @@월 @@일이면, 현재연봉은 @@@입니다.
		col명 empinfo
*/

	select '' ||ename|| '님 입사일은 ' 
		|| substr(hiredate,1,2) || '년 ' 
		|| substr(hiredate,4,2) || '월 ' 
		|| substr(hiredate,7,2) || '일이면, 현재연봉은 $'
		|| sal || '입니다.' empinfo from emp;


/*	
	과제:
		substr을 활용해 job이 MAN으로 끝나는 데이터 출력!		
 */
	select job, ename from emp where substr(job, -3,3) ='MAN';
 
 /*


/*
 	숙제: 입사일이 12월인 데이터를 이름과 입사일을 출력하세요. instr()를 활용!!!
 */

	 select hiredate, instr(hiredate, '12',3) from emp
		where substr(hiredate , instr(hiredate, '12',3) ,2) = '12'
 	 	and NOT substr(hiredate, 7,2)= '12' ;    -- 내가한 별로 안좋은 방법.
 
 	select hiredate from emp where instr(hiredate, '12' ,1, 1) = '4'  --한큐에 땋!!!
 
