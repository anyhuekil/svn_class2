/*
	과제 1. emp03 복사 table 생성
	1. 입력 empno의 가장 작은수보다 -1, mgr : cleark의 mgr입력, sal : 평균 sal, comm = 전체 comm의 합계
	2. 수정 ename : '신길동', job : 'SUPERMAN', hiredate : 최근 입사일 +1
	
	과제 2.
	log in 화면을 만들고 id, pw 체크. 다음화면에서 id @@@님 환영합니다. 남은 point는 @@@ 입니다. 라는 내용이 나타난다고 한다.
	이때 필요호 하는 table과 table 구조를 만들어라
	
	과제 3.
	참조key 관계에 있는 table 구성하기
	main table	student_main(id, pw, name)
	sub table	student_point(id, subject, point)
		student_main과 student_point id로 foreign key 관계를 설정하고, student_main에 data가 있어야만
		student_point를 입력할 수 있게끔 처리
*/

-- 과제 1.
create table emp03 as select * from emp;
select sum(nvl(comm,0)) from emp03;
select avg(sal) from emp03;
select min(empno)-1 from emp03;
insert into emp03(empno,mgr,sal,comm) values(7368,7777,2073.21,2200);
select * from emp03;
select max(hiredate) from emp;
update emp03 set ename='신길동',
				 job=upper('superman'),
				 hiredate=to_date('1983/01/12','YYYY/MM/DD')+1
				 where empno=7368;

-- 과제 2.
create table idPwPointCk
(
	id varchar2(15) primary key,
	pw varchar(10) not null,
	point number(5)
);

-- 과제 3.
create table stdnt_main
(
	stdntId varchar(20) primary key,
	stdntPw varchar(20) not null,
	sname varchar(20) not null
);
create table stdnt_point
(
	stdntId varchar(20) references stdnt_main(stdntId),
	subject varchar(20),
	point number(3,2)
);
