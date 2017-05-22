/* 숙제
emp03 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr:clark의 mgr입력, sal: 평균연봉, comm: 전체comm의 합계
2. 수정 ename: '신길동', job은 SUPERMAN, hiredate는 최근에 입사일 +1
*/	 

select mgr from emp
where ename='CLARK';
--7839
select min(empno)-1, avg(sal), sum(nvl(comm,0)) from emp;
--7368, 7839, 2073.21, 2200 

CREATE TABLE emp03
(
   Min_1 NUMBER(10),
   MGR1  NUMBER(10),
   AVG1  NUMBER(10),
   SUM1  NUMBER(10)
);
drop table emp03;
select * from emp03;	
insert into emp03 values(7368, 7839, 2073.21, 2200);

/* 과제
login 하는 화면을 만들고 id와 password를 체크하고, 다음 화면에서 id@@@님 환영합니다.
님의 point는 @@@입니다. 라는 내용이 나타난다고 한다.
이에 필요로 하는 테이블과 테이블 구조를 만드세요.
*/

create table login(
	id varchar2(20) primary key,
	pass varchar2(20),
	point number(20)
);

select * from login;
insert into login values('himan','22222',100);
insert into login values('bye','2232',200);
insert into login values('hihi','23332',103);

/* 숙제
참조키 관계에 있는 테이블 구성하기 
메인테이블 student_main(id, pass, name) : 아이디, 패스워드, 이름
서브테이블 student_point(id, subject); 아이디, 과목, 점수

student_main과 student_point id로 foreign key 관계를 설정하고,
student_main에 데이터가 있어야만 student_point를 입력할 수 있게끔 처리
*/
drop table student_main3;
drop table student_point3;

CREATE TABLE student_main3
(
   ID    VARCHAR2 (15) primary key,
   pass  VARCHAR2 (15),
   name  VARCHAR2 (15) 
);

CREATE TABLE student_point3
(
   ID    VARCHAR2 (15) primary key,
   subject  VARCHAR2 (15) REFERENCES student_main(ID)
);

select * from student_main3;
select * from student_point3;

insert into student_main3 values('himan', '1234', '홍길동');
insert into student_main3 values('himan1', '1234', '신길동');
insert into student_point3 values('himan1', '수학');

