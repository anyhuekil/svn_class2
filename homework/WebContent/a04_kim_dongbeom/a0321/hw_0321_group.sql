/*
	과제 1.
	연봉단위별로 인원수를 check
	1000 미만		사원수(최고치 최저치 평균치)
	~ 2000 미만		사원수(최고치 최저치 평균치)
	~ 3000 미만		사원수(최고치 최저치 평균치)
	~ 4000 미만		사원수(최고치 최저치 평균치)
	~ 5000 미만		사원수(최고치 최저치 평균치)
	5000 ~			사원수(최고치 최저치 평균치)
	
	과제 2.
	부서위치별 사원 수 출력
	부서위치, 사원수
	
	과제 3.
	student10 / id name
	studentPoint10 / id subject point
	gradeCheck10 / lopoint hipoint grade
	1) id join(equal join) => name subject point
	2) point join(non equal join) => subject point grade
	3) 3 table join => name subject grade
	
	과제 4.
	outer join, group을 활용해서
	부서명별 인원을 확인. 인원이 없는 곳은 0표시
	부서명 인원수
*/

-- 과제 1.
select floor(sal/1000)*1000, count(sal), max(sal), min(sal), avg(sal) from emp group by floor(sal/1000)*1000;

-- 과제 2.
select loc, count(loc) from emp a, dept b where a.deptno=b.DEPTNO group by loc;

-- 과제 3.
create table gradeCheck
(
	grade char(1),
	lopoint number(3),
	hipoint number(3)
);
insert into gradecheck values('A',90,100);
insert into gradecheck values('B',80,89);
insert into gradecheck values('C',70,79);
insert into gradecheck values('D',60,69);
insert into gradecheck values('F',0,59);
select * from gradeCheck;
insert into stdnt_main values('stdntA','pww','Aaa');
insert into stdnt_main values('stdntB','pww','Bbb');
insert into stdnt_main values('stdntC','pww','Ccc');
insert into stdnt_main values('stdntD','pww','Ddd');
insert into stdnt_main values('stdntE','pww','Eee');
insert into stdnt_main values('stdntF','pww','Fff');
insert into stdnt_main values('stdntG','pww','Ggg');
insert into stdnt_main values('stdntH','pww','Hhh');
insert into stdnt_main values('stdntI','pww','Iii');
select * from stdnt_main;
insert into stdnt_point values('stdntA','MATH',90);
insert into stdnt_point values('stdntB','ENG',80);
insert into stdnt_point values('stdntC','KOR',70);
insert into stdnt_point values('stdntD','MATH',60);
insert into stdnt_point values('stdntE','MATH',50);
insert into stdnt_point values('stdntF','ENG',85);
insert into stdnt_point values('stdntG','ENG',100);
insert into stdnt_point values('stdntH','KOR',78);
insert into stdnt_point values('stdntI','KOR',89);
alter table stdnt_point modify(point number(5));
select * from stdnt_point;								-- 여기까지 data 입력!
-- 3-1
select m.sname, p.subject from stdnt_main m, stdnt_point p;
-- 3-2
select p.subject, p.point, g.grade from stdnt_point p, gradeCheck g where p.point between g.lopoint and g.HIPOINT;
-- 3-3
select m.sname, p.SUBJECT, g.grade from stdnt_main m, stdnt_point p, gradeCheck g
where m.STDNTID = p.STDNTID and p.POINT BETWEEN g.LOPOINT and g.HIPOINT ORDER BY m.SNAME;

-- 과제 4.
select d.dname, count(e.ename) from dept d, emp e where e.DEPTNO(+)=d.DEPTNO group by d.dname;
