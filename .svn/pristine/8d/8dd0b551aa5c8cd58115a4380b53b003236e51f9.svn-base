/* 숙제 :
emp13 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr:clerk의 mgr입력, sal:평균연봉, comm:전체 comm의 합계
2. 수정 ename:'신길동', job:SUPERMAN, hiredate:가장최근입사일+1
*/
create table emp13
as select * from emp;
select * from emp13;
select min(empno)-1 from emp13; --7368
select trunc(avg(sal)) from emp13;
select sum(comm) from emp13;
insert into emp13(empno,mgr,sal,comm)
			values(7368,7902,2073,2200);
commit;
select max(hiredate)+1 from emp13;
update emp13
	set ename='신길동', job='SUPERMAN', hiredate='1983/01/13'
	where empno=7368;
select * from emp13;


/* 과제 :
	login 하는 화면을 만들고 id/PW 체크하고, 다음 화면에서 id@@@님 환영합니다. 남은 point는 @@@ 입니다. 라는 내용 나타낸다고 한다.
	이에 필요로 하는 테이블과 테이블구조 만드세요.
*/
create table login01(id varchar2(20),pw varchar2(20));
select * from login01;
insert into login01 values('acorn','acorn0102');
	

/* 숙제 : 
참조키 관계에 있는 테이블 구성하기

메인테이블 student_main(id,pass,name)	:아이디, 패스워드, 이름
서브테이블 student_point(id,subject,point);	아이디, 과목, 점수
	student_main과 student_point id로 foreign key 관계를 설정하고,
	student_main에 데이터가 있어야만 student-point를 입력할 수 있게 처리
*/
create table student_main(
	id varchar2(20) primary key,
	pass varchar2(20),
	name varchar2(20)
);
create table student_point(
	id varchar2(20) references student_main(id),
	subject varchar2(20),
	point number(3)
);
insert into student_main values('acorn','acorn0102','Daniel');
insert into student_main values('abc','abc123','Scott');
select * from student_main;
insert into student_point values('abc','Javascript',95);
insert into student_point values('acorn','CSS/HTML',77);
select * from student_point;


