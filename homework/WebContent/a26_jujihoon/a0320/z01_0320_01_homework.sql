/*
숙제
emp03 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr:clark의 mgr입력, sal:평균연봉,
	comm:전체 comm의 합계
2. 수정 ename:'신길동', job은 SUPERMAN, hiredate는 최근에 입사일+1
*/
create table emp05
as select * from emp;
select min(empno)-1 from emp05;
select mgr from emp05 where ename='CLARK';
select avg(sal) from emp05;
select sum(nvl(comm, 0)) from emp05;
select max(hiredate)+1 from emp05; 

select * from emp;
insert into emp01(empno, mgr, sal, comm) values( 7368, 7839, 2073, 2200);
update emp01
set ename='신길동',
	job='SUPERMAN',
	hiredate=to_date('01/13/1983', 'MM/DD/YYYY')
where empno=7368; 

/*
과제 login 하는 화면을 만들고 id와 password를 체크하고, 다음 화면에서
	id@@@님 환영합니다. 남은 point는 @@@입니다. 라는 내용이 나타난다고 한다.
	이에 필요로 하는 테이블과 테이블 구조를 만드세요..
*/
create table login01(id number(4), password varchar2(20), 
					username varchar2(20), point number(10));
					
/*
숙제
참조키 관계에 있는 테이블 구성하기
메인테이블 student_main(id,pass,name) : 아이디, 패스워드, 이름
서브테이블 student_point(id,subject, point):아이디 과목 점수
student_main과 student_point id로 foreign key 관계를 설정하고,
student_main에 데이터가 있어야만 student_point를 입력할 수 있게끔 처리
*/

create table student_main
(
	id number(2) PRIMARY KEY,
	pass varchar2(14),
	name varchar2(13)
);

CREATE TABLE student_point
(
   id		NUMBER (4) REFERENCES student_main(id),
   subject	VARCHAR2 (10),
   point	NUMBER (4)
);
