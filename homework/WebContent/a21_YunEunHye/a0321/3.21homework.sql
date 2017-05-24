/*
숙제 
연봉단위별로 인원 수를 체크하세요.
1000미만 		사원수(최고치, 최저치, 평균치)
~2000미만
~3000미만
~4000미만
~5000미만
~6000미만
*/
select (floor(sal/1000)+1)*1000 "연봉단위별" , count(*) "사원수", max(sal)"최고치",
 min(sal) "최저치", avg(sal) "평균치" from emp
group by (floor(sal/1000)+1)*1000
order by (floor(sal/1000)+1)*1000;

select * from emp;
/*
과제 
	부서위치별 사원의 수를 아래 형식으로 출력하세요. 
	부서위치 사원수
*/
select * from dept;
select * from emp;
select loc, count(*)
from dept a,emp b
where a.deptno=b.deptno
group by loc;

create table student10(sid varchar2(10), sname varchar2(10)); 
insert into student10(sid, sname) values('AAA','김김김');
insert into student10(sid, sname) values('BBB','이이이');
insert into student10(sid, sname) values('CCC','박박박');
insert into student10(sid, sname) values('DDD','정정정');
create table studentPoint(sid varchar2(10), subject varchar2(10),
							score number(3));
 
insert into studentPoint values('AAA','수학','70');
insert into studentPoint values('BBB','과학','80');
insert into studentPoint values('CCC','영어','88');
insert into studentPoint values('DDD','음악','95');

create table gradeCheck(loPoint number(3), hiPoint number(3),
 grade varchar2(1) check(grade in('A','B','C','D','F')) );

insert into gradeCheck values('91','100','A');
insert into gradeCheck values('81','90','B');
insert into gradeCheck values('71','80','C');
insert into gradeCheck values('61','70','D');
insert into gradeCheck values('0','60','F');

select * from gradeCheck;
select * from student10;
select * from studentPoint;
--grade varchar2(1) check(grade in('A','B','C','D','F')) );
/*
숙제
student10 아이디, 이름
studentPoint 아이디, 과목, 점수 
gradeCheck 최저점수 lopoint, 최고점수 hipoint, 학점등급(A~F)
1) 아이디를 조인해서(EQUAL JOIN)
	이름	과목	점수 출력
2) 점수를 조인해서 (not equal join)
	과목		점수	 	학점등급

3) student10 studentPoint gradeCheck 조인을 하여..
이름 과목 학점등급
*/
select * from student10 a,studentPoint b
where a.sid=b.sid;
select t.subject, t.score, g.grade from studentPoint t, 
		gradeCheck g
where t.score between g.lopoint and g.hipoint;

select s.sname, t.subject, g.grade from studentPoint t, 
		gradeCheck g, student10 s
where t.score between g.lopoint and g.hipoint
and s.sid=t.sid;
/*
숙제) outer join, group을 활용하여 
	부서명별 인원을 확인하려고 한다.
	아래의 형식으로 출력하세요. 인원이 없는 곳은 0으로 표시.
	부서명	인원		
*/
select * from dept;
select dname, count(ename)from dept d,emp e
where e.deptno(+)=d.deptno
group by dname;


