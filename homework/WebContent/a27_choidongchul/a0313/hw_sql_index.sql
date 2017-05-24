/*
	숙제1.
	연봉단위별로 인원수를 체크하세요
	
	범위			사원수(최고치,최저치,평균치)
	1000미만		@@
	2000미만		@@		
	3000미만		@@
	4000미만		@@
	5000미만		@@
	6000미만		@@
*/
	select ((floor(sal/1000)+1)*1000)||'미만' "범위", count(*) "사원수", max(sal) "(최고치", min(sal) "최저치", avg(sal) "평균치)" from emp group by ((floor(sal/1000)+1)*1000);
	
/*
	숙제2. 부서위치별 사원의 수를 아래 형식으로 출력하세요
	부서위치 사원수
*/
	select d.loc "부서위치", count(*) "사원수" from emp e, dept d where e.deptno=d.DEPTNO group by d.loc;

	/*
	숙제3.
	(table)
	student10 아이디, 이름
	studentPoint 아이디, 과목, 점수
	gradeCheck 최저점수lopoint, 최고점수 hipoint, 학점등급(A~F)
	(output)
	1) 아이디를 조인해서 (equal join)
		이름 과목 점수 출력
	2) 점수를 조인해서(not equal join)
		과목 점수 학점등급
	3) student10 studentPoint gradeCheck 조인을 하여
		이름 과목 학점등급
	*/
	create table student10(
		id VARCHAR2(10),
		name VARCHAR2(10)
	);
	create table studentPoint(
		id VARCHAR2(10),
		subject VARCHAR2(10),
		score number(10)
	);
	create table gradeCheck(
		lopoint number(10),
		hipoint number(10),
		grade varchar2(10)
	);
	insert into student10 values('a','choi');
	insert into student10 values('b','kim');
	insert into student10 values('c','hang');
	insert into studentpoint values('a','math',90);
	insert into studentpoint values('b','english',70);
	insert into studentpoint values('c','science',60);
	insert into gradecheck values(90,100,'A');
	insert into gradecheck values(80,89,'B');
	insert into gradecheck values(70,79,'C');
	insert into gradecheck values(60,69,'D');
	insert into gradecheck values(0,59,'F');
	/*
	1) 아이디를 조인해서 (equal join)
		이름 과목 점수 출력
	2) 점수를 조인해서(not equal join)
		과목 점수 학점등급
	3) student10 studentPoint gradeCheck 조인을 하여
		이름 과목 점수 학점등급
	*/
	select a.NAME, b.SUBJECT, b.score from student10 a, studentpoint b where a.id=b.id;
	select b.SUBJECT, b.SCORE, c.GRADE from studentpoint b, gradecheck c where b.SCORE between c.LOPOINT and c.HIPOINT;
	select a.NAME, b.SCORE, b.SUBJECT, c.GRADE
	from student10 a, studentpoint b, gradecheck c where a.id=b.id and b.SCORE between c.LOPOINT and c.HIPOINT;

/*
		숙제4.
		outer join, group을 활용하여
		부서명별 인원을 확인할려고 한다
		아래의 형식으로 출력하세요 인원이 없는 곳은 0으로 표시
		부서명 인원
*/
	select d.dname "부서명", count(e.ENAME) "인원" from emp e, dept d where d.DEPTNO=e.DEPTNO(+) group by d.dname;
