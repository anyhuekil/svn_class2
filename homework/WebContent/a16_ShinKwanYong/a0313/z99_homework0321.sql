/*
과제
연봉 단위별로 인원수를 체크
1000미만		사원수(최고치,최저치,평균치)
~2000미만
~3000미만
~4000미만
~5000미만
~6000미만

*/
select * from emp;
select trunc(sal,-3)+1000 미만, count(*), max(sal), avg(sal)
from emp
group by trunc(sal,-3)
order by trunc(sal,-3) desc;

/*
과제
부서위치별 사원의 수를 아래 형식으로 출력
부서위치 사원수
*/
select * from dept;

select loc, count(*)
from emp a, dept b
where a.DEPTNO = b.DEPTNO
group by loc;


/*
과제
student10		아이디, 이름
studentPoint	아이디, 과목, 점수
gradeCheck		최저점수lopoint, 최고점hipoint, 학점등급(A~F)
1) 아이디를 조인해서(equal join)
	이름 과목 점수 출력
2) 점수를 조인해서(not equal join)
	과목 점수 학점등급
3) student10 studentPoint gradeCheck 조인하여
	이름 과목 학점등급
*/

create table gradeCheck(
	grade char(2),
	lopoint number(3,0),
	hipoint number(3,0)	
	);
	
insert into gradeCheck values('A',90,100);
insert into gradeCheck values('B',80,89);
insert into gradeCheck values('C',70,79);
insert into gradeCheck values('D',60,69);
insert into gradeCheck values('F',0,59);


select * from gradeCheck;
select s.name, p.subject01, p.point
from student10 s, studentPoint p
where s.id=p.id;

select p.subject01, p.point, g.grade
from studentPoint p, gradeCheck g
where p.point between g.lopoint and g.hipoint;

select s.name, p.subject01, g.grade
from student10 s, studentPoint p, gradeCheck g
where s.id=p.id and p.point between g.lopoint and g.hipoint;







/*
과제
outer join, group을 활용하여 부서명별 인원을 확인하려고 한다
아래형식으로 출력하시오 인원이 없는 곳은 0으로 표시
부서명 인원
*/

select * from emp;
select * from dept;
select d.dname, count(e.deptno)
from emp e, dept d
where e.deptno(+)=d.deptno
group by d.dname;














