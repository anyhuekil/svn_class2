/* 숙제
emp03 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr:clark의 mgr 입력, sal:평균연봉, comm:전체 comm의 합계
2. 수정 enmae:'신길동', job은 superman, hiredate는 최근 입사일 + 1
*/
select * from emp;
create table emp01 as select * from emp;
select * from emp01;
select * from emp01 where ename = 'CLARK';
select avg(sal) from emp01;
select sum(nvl(comm,0)) from emp01;
insert into emp01 (empno,mgr,sal,comm) 
	values(999, 7839, 2279.17, 2200);
select * from emp01;
update emp01 set ename='신길동', job='superman', 
	hiredate=to_date('1983/12/02','YYYY/MM/DD') where empno = 999;
select * from emp01;

/*
과제 : Log in인 하는 화면을 만들고 ID와 PASSWORD을 체크하고, 다음 화면에서 id@@@ 님 환영합니다.
남은 point는 @@@입니다. 라는 내용이 나타난다고 한다. 이에 필요로 하는 테이블과 테이블 구조를 만드세요
*/
create table longin (id varchar2(10), password varchar2(10),
point number(5));
select * from longin;

/* 숙제
메인테이블 student_main(id, pass, name); : 아이디 , 패스워드, 이름
sub테이블 student_point(id, subject, point); 아이디, 과목, 점수 
student_main과 student_point id로 foreign key 관계를 설정하고,
student_main에 데이터가 있어야만 student_point를 입력할 수 있게 처리하자.
*/
create table student_main(
	id varchar2(10) primary key,
	password varchar2(10),
	name varchar2(10)
);
create table student_point(
	id varchar2(10) references student_main(id) ,
	subject varchar2(10),
	point number(10) 
);
select * from student_point;
select * from student_main;
insert into student_main values('hotteok','hotteok','hotteok');
insert into student_point values('bread','hotteok',500);
insert into student_point values('hotteok','hotteok2',500);
