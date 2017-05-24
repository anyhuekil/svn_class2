/*
숙제1
연봉단위별로 인원수를 체크하세요.
1000미만	사원수(최고치, 최저치, 평균치)
~2000미만
~3000미만
~4000미만
~5000미만
~6000미만

*/
select * from emp;

select 
	trunc(sal, -3)+1000||' 미만' 연봉단위, 
	count(*) 사원수, 
	max(sal) 최고치, 
	min(sal) 최저치, 
	avg(sal) 평균치
from emp
group by
	trunc(sal, -3)
order by 
	trunc(sal, -3);

/*
숙제2
부서위치별 사원의 수를 아래 형식으로 출력하세요.
부서위치	사원수
[ ORACLE ] ORA-00979: GROUP BY 표현식이 아닙니다
select 로 검색하는 column 중 집합함수 빼고는 모두 group by 컬럼으로 표시되어야 한다.
*/
select 
	d.loc 부서위치, 
	count(e.ename) 사원수 
from 
	emp e,
	dept d
where 
	e.deptno = d.deptno
group by 
	d.loc;

/*
숙제3
student id, name
studentPoint id, subject, score
gradeCheck minpoint, maxpoint, grade(A~F)
1) 아이디를 조인해서(equal join)
	이름 과목 점수 출력
2) 점수를 조인해서(not equal join)
	과목 점수 학점등급
3) STUDENT10, STUDENTPOINT, gradeCheck 조인을 하여
	이름 과목 학점등급 
*/
create table STUDENT10 (
	id		varchar2(10) primary key,
	name	varchar2(20)
);

create table STUDENTPOINT (
	id		varchar2(10) references studen10(id),
	subject	varchar2(20),
	score	number(3)
);

create table GRADECHECK (
	minpoint	number(3),
	maxpoint	number(3),
	grade		varchar2(1)
);
-- 1)
select 
	s.name, 
	p.subject, 
	p.score
from 
	student10 s, 
	studentpoint p
where 
	s.id = p.id;
-- 2)
select 
	p.subject, 
	p.SCORE, 
	c.GRADE
from 
	studentpoint p, 
	gradecheck c
where 
	p.score between c.MINPOINT and c.MAXPOINT
order by 
	p.score desc;
-- 3)
select 
	s.NAME, 
	p.SUBJECT, 
	c.GRADE
from 
	student10 s, 
	studentpoint p, 
	gradecheck c
where 
	s.id = p.id
	and p.score between c.MINPOINT and c.maxpoint;

-- Dummy Data
insert into student10 values (1,'park');
insert into student10 values (2,'yun');
insert into student10 values (3,'ha');
insert into student10 values (4,'zzang');

insert into gradecheck values (0, 50, 'F');
insert into gradecheck values (51, 60, 'E');
insert into gradecheck values (61, 70, 'D');
insert into gradecheck values (71, 80, 'C');
insert into gradecheck values (81, 90, 'B');
insert into gradecheck values (91, 100, 'A');

insert into studentpoint values (1, 'math', 100);
insert into studentpoint values (1, 'korean', 90);
insert into studentpoint values (2, 'math', 80);
insert into studentpoint values (2, 'korean', 70);
insert into studentpoint values (3, 'math', 60);
insert into studentpoint values (3, 'korean', 50);
insert into studentpoint values (4, 'math', 40);
insert into studentpoint values (4, 'korean', 30);

/*
숙제4
outer join, group을 활용하여 부서명별 인원을 확인하려고 한다.
이래의 형식으로 출력하세요. 인원이 없는 곳은 0으로 표시
부서명	인원		
*/
select * from emp;
select * from dept;
select
	d.DNAME 부서명,
	count(e.deptno) 인원
from 
	emp e, 
	dept d
where 
	e.DEPTNO(+) = d.DEPTNO
group by 
	d.DNAME;







