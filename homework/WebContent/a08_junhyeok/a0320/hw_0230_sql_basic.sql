/*
숙제
emp03 복사테이블 생성
1. empno의 가장 작은수보다 -1, mgr: clerk의 mgr 입력, sal:평균연봉, comm: 전체 comm의 합계
2. 수정 ename:'신길동', job:'SUPERMAN', hiredate:최근에 입사일 +1
*/
create table emp03 as select * from emp;
select * from emp03;
select min(empno)-1 from emp03;
--empno=7368;
insert into emp03(empno, mgr, sal, comm) values(7368, 7902,(select avg(sal) from emp03), (select sum(comm) from emp03));
update emp03
	set ename='신길동',
		job='SUPERMAN',
		hiredate=(select min(hiredate) from emp03)+1
		where empno=7368;
select * from emp03;

/*
과제 
login 하는 화면을 만들고 id와 password를 체크하고, 다음 화면에서 id@@@님 환영합니다. 남은 point는 @@@ 입니다. 라는 내용이 나타난다고 한다.
이에 필요로 하는 테이블과 테이블 구조를 만드세요 
*/
create table info (id varchar2(15), pw varchar2(20), point number(3));
select * from info; 

/*
참조키 관계에 있는 테이블 구성하기
메인테이블	STUDENT_MAIN(ID,PASS,NAME)	:아이디, 패스워드, 이름
서브테이블	STUDENT_POINT(ID, SUBJECT, POINT);	:아이디, 과목, 점수
STUDENT_MAIN과 STUDENT_POINT ID로 FOREIGN KEY 관계를 설정하고,
STUDENT_MAIN에 데이터가 있어야만 STUDENT_POINT를 입력할 수 있게끔 처리..
*/
CREATE TABLE STUDENT_MAIN(
	ID	VARCHAR2(15) PRIMARY KEY,
	PASS VARCHAR2(10),
	NAME VARCHAR2(10)
);
CREATE TABLE STUDENT_POINT(
	ID VARCHAR2(15) REFERENCES STUDENT_MAIN(ID),
	SUBJECT CHAR(10),
	POINT NUMBER(3)
);
