/*
3/20
숙제01
emp03 테이블 복사 생성
1. empno의 가장 작은수보다 -1, mgr:cleark 입력, sal:평균연봉, comm: 전체의 comm 합계
2. 수정 ename: '신길동',job은 superman, hiredate는 최근일 +1
*/
select min(empno)-1 from emp; -- 7369 
select avg(sal) from emp; -- 2,073.21
select sum(comm) from emp; -- 2,200 // mgr : 7902

create table emp003
	as select * from emp;

select * from emp003;

--1번 empno의 가장 작은수보다 -1, mgr:cleark 입력, sal:평균연봉, comm: 전체의 comm 합계
insert into emp003(empno, mgr, sal, comm) 
		values(7368,7902,2073,2200);
		
--2번 수정 ename: '신길동',job은 superman, hiredate는 최근일 +1

update emp003
	set ename='신길동',	
		job='SUPERMAN',
		hiredate=sysdate+1
	where empno=7368;

select * from emp003;	



/*
숙제02
 login 하는 화면을 만들고 id와 password를 체크하고, 다음화면에서  
'id@@@님 환영합니다. 남은 point는 @@@입니다' 라는 내용이 나타난다고 한다.
이에 필요로하는 테이블과 테이블 구조를 만드세요
*/
create table idNpw(id varchar2(20), pw varchar2(20), point number(6));
select * from idNpw;
insert into idnpw(id, pw, point) values('kdh',1111,10000);
insert into idnpw(id, pw, point) values('kwm',1111,20000);
insert into idnpw(id, pw, point) values('kmk',1111,30000);
insert into idnpw(id, pw, point) values('jgh',1111,40000);

/*
숙제03
참조키 관계에 있는 테이블 구성하기
메인테이블 STUDENT_MAIN(ID, PASS, NAME) : 아이디, 패스워드, 이름
서브테이블 STUDENT_POINT(ID, SUBJECT); 아이디, 과목, 점수
    STUDENT_MAIN과 STUDENT_POINT ID로 FOREIGN KEY 관계를 설정하고,
    STUDENT_MAIN에 데이터가 있어야만 STUDENT_POINT를 입력할 수 있게끔 처리
*/
create table student_main(
							id varchar2(20) PRIMARY KEY, 
							pass varchar2(20), 
							name varchar2(10)
						);


create table student_point(
							id varchar2(20) REFERENCES STUDENT_MAIN(ID),
							subject varchar2(20),
							point number(6)
							);

INSERT INTO STUDENT_MAIN (ID, PASS, NAME) VALUES('KDH',1111,'김동휘');
INSERT INTO STUDENT_MAIN (ID, PASS, NAME) VALUES('KWM',1111,'강원민');
INSERT INTO STUDENT_MAIN (ID, PASS, NAME) VALUES('KMK',1111,'김민경');
INSERT INTO STUDENT_MAIN (ID, PASS, NAME) VALUES('JGH',1111,'주지훈');

INSERT INTO STUDENT_POINT (ID, SUBJECT, POINT) VALUES('JGH','수학',100);
INSERT INTO STUDENT_POINT (ID, SUBJECT, POINT) VALUES('KDH','영어',50);
/* 아이디값 없으므로 입력이 안됨*/
INSERT INTO STUDENT_POINT (ID, SUBJECT, POINT) VALUES('KKK','수학',100); 


SELECT * FROM STUDENT_MAIN;
SELECT * FROM STUDENT_POINT;


drop table student_point;
drop table student_main;

select * from student_main;
select * from student_point;



