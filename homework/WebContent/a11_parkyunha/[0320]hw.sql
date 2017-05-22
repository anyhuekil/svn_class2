/*
숙제1
emp03 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr: clark의 mgr입력,
	sal:평균연봉, comm:전체 comm의 합계
2. 수정 ename:'신길동', job은 SUPERMAN, hiredate는 최근에 입사일+1
*/
create table emp03
as select * from emp;

select * from emp03 order by hiredate;

select avg(sal) from emp03;
select sum(comm) from emp03;
select min(empno) from emp03;
select max(hiredate) from emp03;
select mgr from emp03 where ename='CLARK';

-- 정답 : subquery version 1
insert into emp03(empno, mgr, sal, comm)
	values(
		(select min(empno) from emp03)-1,
		(select mgr from emp03 where ename='CLARK'),
		(select avg(sal) from emp03),
		(select sum(comm) from emp03)
		);	
-- 정답 : subquery version 2
-- 궁금한점. 7777 로 하드 코딩되어 있는 부분에 쿼리를 날리면 에러가 뜨는데 왜 그런것인지?
insert into emp03(empno, mgr, sal, comm)
	select min(empno), 7777, avg(sal), sum(comm) from emp03;
select min(empno), avg(sal), sum(comm), (select mgr from emp03 where ename='SCOTT') from emp03;
-- 테스트 코드 --
update emp03
	set ename='신길동',
		job='SUPERMAN',
		hiredate=(select max(hiredate) from emp03)+1
	where empno=7368;
	
insert into emp03(empno) values( min(empno) );

insert into emp03(empno) 
	values( (select min(empno) from emp03) );
	
/*
숙제2
login 한는 화면은 말들고 id와 password를 체크하고, 다음 화면에서
id@@@ 님 환영합니다. 남은 point는 @@@ 입니다. 라는 내용이 나타난다고 한다.
이에 필요로 하는 테이블과 데이블 구조를 만드세요.
*/
create table CUSTOMER(id VARCHAR2(10), pass VARCHAR2(10), myPoint NUMBER(9));
	

/*
숙제3
참조키 관계에 있는 테이블 구성하기
메인테이블 student_main
	메인테이블 student_main(id, pass, name) : 아이디, 패스워드, 이름
	서브테이블 student_point(id, subject, point) : 아이디, 과목, 점수
	student_main과 student_point id로 foreign key 관계를 서정하고,
	student_main에 데이터가 있어야만 student_point를 입력할 수 있게끔 처리. 
*/

create table student(
	id 		VARCHAR2(20) primary key,
	pass 	varchar2(20),
	name	varchar2(20)
);

create table student_point(
	id	varchar2(20) references student(id),
	subject VARCHAR2(20),
	point varchar2(10)
);
	