/* 과제 (homework )
 부서위치별 사원의 수를 아래 형식으로 출력허세요.
 부서위치		사원수		
*/
select * from emp e, dept d where e.deptno(+)=d.deptno;           -- dept 테이블 deptno 40에는 전부 공백.
select d.loc, count(e.ename) from emp e, dept d where e.deptno(+)=d.deptno group by d.loc;   
select d.loc, count(e.ename) from emp e, dept d where e.deptno=d.deptno group by d.loc;




/*
 과제(homework)
 student10 아이디, 이름
 studentPoint 아이디, 과목, 점수
 gradeCheck 최저점수lopoint, 최고점수hipoint, 학점등급(A~F)
 1) 아이디를 조인해서(equal join)
 	이름 과목 점수 출력
 2) 점수를 조인해서(not equal join)
 	과목 점수 학점등급
 3) student10 studentPoint gradeCheck 조인을 하여
 	이름 과목 학점등급	 	
*/	

-- student_info 테이블 제작 및 데이터 입력
	
	create table student_info(
		ID VARCHAR2(20),
		NAME VARCHAR2(20)
		);
	
	insert into student_info values('a','설리');	
	insert into student_info values('b','초아');	
	insert into student_info values('c','설현');	
	insert into student_info values('d','수지');	
	insert into student_info values('e','솔지');	
	insert into student_info values('f','하니');	
	insert into student_info values('g','쯔위');	
	insert into student_info values('h','모모');	
	select * from student_info;
	
	
-- student_point 테이블 제작 및 입력	
	
	create table student_point(
		ID VARCHAR2(20),
		SUBJECT VARCHAR2(20),
		POINT NUMBER
		);
	
	insert into student_point values('a','국어',100);	
	insert into student_point values('a','영어',70);	
	insert into student_point values('a','수학',40);	
	insert into student_point values('b','국어',40);	
	insert into student_point values('b','영어',60);	
	insert into student_point values('b','수학',70);	
	insert into student_point values('c','국어',100);	
	insert into student_point values('c','영어',70);	
	insert into student_point values('c','수학',40);	
	insert into student_point values('d','국어',50);	
	insert into student_point values('d','영어',60);	
	insert into student_point values('d','수학',20);
	insert into student_point values('e','국어',30);	
	insert into student_point values('e','영어',10);	
	insert into student_point values('e','수학',60);
	insert into student_point values('f','국어',60);	
	insert into student_point values('f','영어',20);	
	insert into student_point values('f','수학',30);
	insert into student_point values('g','국어',60);	
	insert into student_point values('g','영어',30);	
	insert into student_point values('g','수학',60);
	insert into student_point values('h','국어',90);	
	insert into student_point values('h','영어',99);	
	insert into student_point values('h','수학',80);
	select * from student_point;					


-- grade_check 테이블 생성 및 데이터 입력
	create table grade_check(
		lopoint number,
		hipoint number,
		grade VARCHAR2(20)
		);
	
	insert into GRADE_CHECK values(90, 100, 'A등급');	
	insert into GRADE_CHECK values(80, 89, 'B등급');	
	insert into GRADE_CHECK values(70, 79, 'C등급');	
	insert into GRADE_CHECK values(60, 69, 'D등급');	
	insert into GRADE_CHECK values(0, 59, 'F등급');	
	select * from grade_check;

-- 1) 아이디를 조인해서(equal join) 이름 과목 점수 출력
	select * from student_info, student_point, grade_check;
	
	select i.name 이름, p.subject, p.point from student_info i, student_point p where i.id=p.id;

-- 2) 점수를 조인해서(not equal join) 과목 점수 학점등급
	select i.name 이름, p.subject 과목, p.point 점수, g.grade 학점등급 from student_info i, student_point p, grade_check g
		where i.id=p.id and (p.point between g.lopoint and g.hipoint) order by i.id, 학점등급; 
	
	select i.name 이름, avg(p.point) 평균점수 from student_info i, student_point p where i.id=p.id group by i.name;
	
	select p.id 아이디, p.subject 과목, p.point 점수, g.grade 학점등급, g.lopoint 최소점수, g.hipoint 최대점수
		from student_point p, grade_check g where p.point between g.lopoint and g.hipoint;
		
	