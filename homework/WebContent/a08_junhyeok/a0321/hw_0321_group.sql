/*
숙제
연봉 단위별로 인원수를 체크하세요
범위			사원수(최고치, 최저치, 평균치)
1000 미만		@@
~2000 미만	@@@
~3000 미만	@@
~4000 미만
~5000 미만
~6000 미만
*/
SELECT TRUNC(SAL,-3)||' 미만', COUNT(*) FROM EMP 
GROUP BY TRUNC(SAL,-3);

/*
과제
	부서 위치별 사원의 수를 아래 형식으로 출력하세요
	부서위치	사원 수..
		
*/
SELECT LOC "부서위치", COUNT(*) "사원수"
FROM EMP, DEPT
WHERE EMP.DEPTNO=DEPT.DEPTNO
GROUP BY LOC;


/*
숙제
student10 		아이디, 이름
studentPoint	아이디, 과목, 점수
gradeCheck		최저점수lopoint,	최고점수hipoint, 학점등급(A~F)
1) 아이디를 조인해서(equal join)
	이름	과목	점수 출력
2) 점수를 조인해서(not equal join)
	과목 점수 학점등급
3) 	student10 studentPoint gradeCheck 조인을 하여..
	이름 과목 학점등급
*/
create table gradeCheck(
			lopoint number(3),
			hipoint number(3),
			grade	char(1)
			);
select * from gradeCheck;
insert into gradeCheck values(0,10,'F');
insert into gradeCheck values(11,30,'E');
insert into gradeCheck values(31,50,'D');
insert into gradeCheck values(51,70,'C');
insert into gradeCheck values(71,90,'B');
insert into gradeCheck values(91,100,'A');


/*
숙제) outer join, group을 활용하여
	부서명별 인원을 확인하려고 한다.
	아래의 형식으로 출력하세요 인원이 없는 곳은 0으로 표시.
	부서명	인원
*/
select d.deptno, count(e.deptno)
from emp e, dept d
where e.deptno(+)=d.deptno
group by d.deptno;
