
/*****1번문제*****/
select trunc(sal,-3)+1000||'만원 미만' "연봉", count(*) "사원수", max(sal) "최고치", min(sal) "최저치", avg(sal) "평균치"
from emp group by trunc(sal,-3)+1000 ;

/*****2번문제*****/
select loc "부서위치", count(*) "사원수" from emp e,dept d where e.deptno=d.deptno
group by loc; 

select * from dept;

/*****3번문제*****/

/**테이블 생성**/
create table student10(
	id varchar2(20) primary key,
	name varchar2(15) not null
);
create table studentPoint(
	id varchar2(20) references student10(id),
	subject varchar2(10),
	point number(4) primary key
);
create table gradeCheck(
	point number(4) references studentPoint(point),
	lopoint number(4), hipoint number(4), grade char(1) check (grade in('A','B','C','D','F'))
);

/*데이터 입력*/
insert into student10 values ('test','홍길동');
insert into studentPoint values ('test','수학','50');
insert into gradeCheck values ('50','0','100','D');

/*테이블 확인*/
select * from student10 ;
select * from studentPoint ;
select * from gradeCheck ;

/*1) 아이디를 조인해서(equal join) 
이름 과목 점수 출력*/
select name "이름", subject "과목", p.point "점수" from student10 s, studentPoint p
where s.id=p.id;

/*2) 점수를 조인해서(not equal join)
	과목 점수 학점등급***/
select subject "과목", p.point "점수", grade "학점등급" from studentPoint p, gradeCheck g
where p.point = g.point;

/*3) student10 studentPoint gradeCheck 조인을 하여
	이름 과목 학점등급***/
select name "이름", subject "과목", grade "학점등급" from student10 s, studentPoint p, gradeCheck g
where s.id=p.id and p.point=g.point;

/***4번문제***/
select dname "부서명", count(ename) "인원" from emp e, dept d
where e.deptno(+)=d.deptno group by dname ;

select * from emp;
select * from dept;
/*
***1번 문제
연봉단위별로 인원수를 체크하세요
1000미만		사원수(최고치, 최저치, 평균치)
~2000미만
~3000미만
~4000미만
~5000미만
~6000미만

***2번문제
부서위치별 사원의 수를 아래 형식으로 출력하세요
	부서위치 	사원수.

***3번문제
student10 아이디, 이름
studentPoint 아이디, 과목, 점수
gradeCheck 최저점수 lopoint, 최고점수 hipoint, 학점등급(A~F)
1) 아이디를 조인해서(equal join) 이름 과목 점수 출력
2) 점수를 조인해서(not equal join)
	과목 점수 학점등급
3) student10 studentPoint gradeCheck 조인을 하여
	이름 과목 학점등급
	
***4번문제	
outer join, group을 활용하여
	부서명별 인원을 확인하려고한다.
	아래의 형식으로 출력하세요. 인원이 없는 곳은 0으로 표시
	부서명 인원
*/
