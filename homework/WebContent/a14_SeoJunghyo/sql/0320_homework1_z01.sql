/* 과제1. (homework 1)
 EMP03 복사테이블 생성
 1. 입력 EMPNO의 가장 작은수보다 -1, MGR : CLERK의 MGR입력, SAL : 평균연봉, COMM : 전체 COMM의 합게
 2. 수정 ENAME : '신길동', JOB은 SUPERMAN, HIREDATE는 최근에 입사일+1
*/ 

	create table emp03 as select * from emp;
	select * from emp03;
	select min(empno), avg(sal), sum(comm),max(hiredate)+1 from emp;
	insert into emp03(empno, mgr, sal, comm) values(7368,7902,2073.21,2200);
	select * from emp03;
	update emp03 set ename='신길동', job='SUPERMAN', hiredate=to_date('1983/01/12')+1, comm=2200 where empno=7368;
	select * from emp03;

/*
 과제2. (homework 2)
 login인 하는 화면을 만들고 id와 password를 체크하고, 다음화면에서 'id@@@님 환영합니다. 남은 point는 @@@입니다.' 라는 내용이 나타난다고 한다.
 이에 필요로 하는 테이블과 테이블 구조를 만드세요.
*/	
	create table login( id VARCHAR2(20), password VARCHAR2(20), point number(10) );
	select * from login;
	alter table login modify(id VARCHAR2(20) PRIMARY KEY );
	alter table login modify(password not null);
	select * from login;
	select * from login; 	
	