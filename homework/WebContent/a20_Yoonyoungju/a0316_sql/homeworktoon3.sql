/* 과제 
	 부서위치별 사원의 수를 아래 형식으로 출력하세요 
	 부서위치 사원 수...
	 
*/
 select loc ,count(ename) from emp, dept  
  group by loc ;
  
  /* 숙제 
student10 아이디 , 이름 
create table student10( id varchar2(10) premary key, ename char(6))

studentPoint 아이디 ,과목, 점수 
create table studentPoint( id varchar2(10) premary key,subject varchar(10),point number(10))

gradeCheck 최저점수lopoing, 최고점수hipoint, 학점등급(A~F)

create table gradeCheck ( lopoing number(10), hipoint (10), grade char (3))

1) 아이디를 조인해서 (equal join)
	이름 과목 점수 출력
	select ename, subject , point from student10 ,studentPoint
	where student10.id = studentPoint.id;
	
2) 점수를 조인해서(not equal join)
	과목 점수 학점등급
select 	a.subject, a.point, b.grade from studentPoint a ,gradeCheck b 
where a.point between b.lopoing and b.hipoint

3) student10 studentPoint gradeCheck 조인을 하여 
이름, 과목 , 학점등급

select 	a.ename, b.subject, c.grade from student10 a,studentPoint b ,gradeCheck c
where b.point between c.lopoing and c.hipoint
 and a.id  = b.id 

*/



--student10 아이디 , 이름 
create table student10( id varchar2(20) primary key not null , ename varchar2(20) not null);

insert into student10 ( id,ename) values ('aaa','홍길');
insert into student10 ( id,ename)values ('bbb','신길');
insert into student10  ( id,ename)values ('ccc','백길');
insert into student10  ( id,ename)values ('ddd','홍길동');
insert into student10  ( id,ename)values ('eee','백길동');
alter table student10 modify ( ename varchar2(20));
select * from student10;
--studentPoint 아이디 ,과목, 점수 
create table studentPoint( id varchar2(10) primary key not null REFERENCES student10(id),
subject varchar(10),point number(10));

insert into studentPoint (id, subject,point) values('aaa','과학','90');
insert into studentPoint (id, subject,point) values('bbb','과학','90');
insert into studentPoint (id, subject,point) values('ccc','과학','90');
insert into studentPoint (id, subject,point) values('ddd','과학','90');
insert into studentPoint (id, subject,point) values('eee','과학','90');
select * from studentPoint;

update  studentPoint  set point ='0' where id ='eee';
--gradeCheck 최저점수lopoing, 최고점수hipoint, 학점등급(A~F)
--0,5,6,7,8,9
create table gradeCheck ( lopoing number(10), hipoint number(10),
 grade varchar2(3) check(grade in('A','B','C','D','E','F')));
 select *from gradeCheck;
 alter table gradeCheck modify ( grade varchar2(20));
insert into gradeCheck (lopoing, hipoint,grade) values(90,100,'A');
insert into gradeCheck (lopoing, hipoint,grade) values(80,89,'B');
insert into gradeCheck (lopoing, hipoint,grade) values(70,79,'C');
insert into gradeCheck (lopoing, hipoint,grade) values(60,69,'D');
insert into gradeCheck (lopoing, hipoint,grade) values(50,59,'E');
insert into gradeCheck (lopoing, hipoint,grade) values(0,49,'F');

--1) 아이디를 조인해서 (equal join)
--	이름 과목 점수 출력
	select ename, subject , point from student10 ,studentPoint
	where student10.id = studentPoint.id;
	
--2) 점수를 조인해서(not equal join)
--	과목 점수 학점등급
select 	a.subject, a.point, b.grade from studentPoint a ,gradeCheck b 
where a.point between b.lopoing and b.hipoint;

--3) student10 studentPoint gradeCheck 조인을 하여 
--이름, 과목 , 학점등급

select 	a.ename, b.subject, c.grade from student10 a,studentPoint b ,gradeCheck c
where b.point between c.lopoing and c.hipoint
 and a.id  = b.id ;
 
 
 
 /*
숙제) outer join, group  을 활용하여  
	부서명별  인원을 확인할려고 한다.
	아래의 형식으로 출력하세요 인원이 없는 곳은 0으로 표시
	부서명 인원
*/
select b.deptno, b.dname , count(a.ename) from emp a , dept b
where a.deptno(+) = b.deptno group by b.dname,b.deptno;
