
/* 숙제
emp03 복사테이블 생성
1. 입력  empno의 가장 작은수보다 -1, mgr:cleark의 mgr입력, sal:평균연봉, 
   comm:전체comm의 합계
2. 수정 ename:'신길동', job은 SUPERMAN, hirdate는 최근에 입사일+1
*/

create table emp03 as select * from emp;
select min(empno)-1, avg(sal), sum(comm) from emp03;
select * from emp03 where ename ='CLARK'; 
select max(hiredate)+1 from emp03;
insert into emp03 (empno,sal,comm,mgr) values (7368,2073.21,2200,7839);

update emp03 set ename ='신길동',job='SUPERMAN',hiredate ='1983/01/13'
where  empno =7368;

commit;

/*
과제 login인 하는 화면을 만들고 id와 password을 체크하고, 다음 화면에서
	id@@@ 님 환영합니다. 남은 point는 @@@ 입니다. 라는 내용이 나타난다고 한다.
	이에 필요로 하는 테이블과 테이블 구조를 만드세요..
*/

create table login_t (id varchar2(20) not null,password vharchar(8)not null,
point number(7));

/* 숙제
참조키 관계에 있는 테이블 구성하기 
메인테이블  student_main(id, pass, name) :아이디, 패스워드, 이름
서브테이블  student_point(id, subject, point); 아이디, 과목, 점수
  student_main 과 student_point  id로  foreign key 관계를 설정하고,
  student_main에 데이터가 있어야만 student_point를 입력할 수 있게끔 처리
*/
select * from emp;
select * from dept;
drop table DEPT_REF;
CREATE TABLE student_main
(
   ID   	VARCHAR2 (8) primary key,
   PASS     VARCHAR2 (10) not null,
   NAME     VARCHAR2 (13) not null
);

CREATE TABLE student_point
(
   ID   		VARCHAR2 (8) primary key REFERENCES student_main(ID),
   SUBJECT      VARCHAR2 (10) not null,
   STUENTPOINT  NUMBER (8)
);

insert into student_point values('STU_01','SC',12);
-- 먼저입력시 parent key not found 에러문 뜸
insert into student_main values('STU_01','7777','신길동');
--main 테이블 부터 입력시 point테이블도 입력이 가능 
select * from student_point;
select * from student_main;
commit;

