/*
숙제
emp3 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr:cleark의 mgr입력, sal:평균연봉,
	comm:전체 comm의 합계
2. 수정 ename: '신길동', job은 SUPERMAN, hiredate는 최근에 입사일+1
*/

create table emp3
as select * from emp;
select * from emp3;
select min(empno)-1 from emp3; --7,368
select avg(sal) from emp3; --2,073.21
select sum(comm) from emp3; --2,200

insert into emp3(empno, mgr, sal, comm) values(7368,7788,2073.21,2200);
select * from emp3;
select max(hiredate)+1 from emp3;

update emp3
	set ename='신길동',
		job='SUPERMAN',
		hiredate = to_date('1983/01/13', 'yyyy/mm/dd')
where empno=7368;
select * from emp3;



/*
과제 login인 하는 화면을 만들고 id와 password을 체크하고, 다음 화면에서
	id@@@ 님 환영합니다. 남은 point는 @@@ 입니댜. 라는 내용이 나타난다고 한다.
	이에 필요로 하는 테이블과 테이블 구조를 만드세요.
*/
create table login(
	id 		 varchar2(20),
	password varchar2(20),
	point  	 number(20)
	);
select * from login;


/*
숙제
참조키 관계에 있는  테이블 구성하기

메인테이블 student_main(id, pass, name) : 아이디 ,패스워드, 이름
서브테이블 student_main(id, subject, point) : 아이디 ,과목, 점수
	student_main 과  student_point id로 foreign key 관계를 설정하고,
	sudent_main에 데이터가 있어야만 student_pointf를 입력할 수 있게끔 처리
*/

drop table student_main;
create table student_main 
(
	id VARCHAR2(10) primary key  ,
	pass NUMBER(10),
	name VARCHAR2(10)
);

CREATE TABLE student_point
(
   id       VARCHAR2(10) references student_main(id),
   subject  VARCHAR2(10),
   point    NUMBER(10) 
);
insert into student_main values('first',1111,'MAN');
select * from student_main;
