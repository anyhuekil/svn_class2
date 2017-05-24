/*
3/21 
과제01
연봉 단위별로 인원수를 체크하세요
범위			사원수(최고치, 최저치, 평균치)
1000미만		@@
~2000미만	@@
~3000미만	@@
~4000미만	@@@
~5000미만
~6000미만
*/

SELECT DISTINCT(TRUNC(SAL,-3)) 범위 , 
		COUNT(TRUNC(SAL,-3)) 사원수,  
		MAX(SAL), MIN(SAL), AVG(SAL) 
FROM EMP 
GROUP BY TRUNC(SAL,-3); 

/*
과제02
student 아이디, 이름
studentPoint 아이디, 과목,점수
gradeCheck 최저 점수 lopoint, 최고점수 hipoint, 학점등급(A~F)
1) 아이디 조인 (equal join)
	이름/과목/점수 출력
2) 점수를 조인해서 (not equal join) 
	과목/점수/학점등급 출력
3) student10 studentPoint gradeCheck 
     	조인을 하여 이름/과목/학점등급 
*/
select * from student_main;
select * from student_point;

ALTER TABLE student_point ADD(GRADE VARCHAR(2));


insert into student_point values('KDH','베트남어','90','A');
insert into student_point values('KWM','연애점수','90','A');
insert into student_point values('KMK','영어','100','A');
insert into student_point values('JGH','수학','70','B');

TRUNCATE TABLE student_point;



--1번
select NAME 이름, SUBJECT 과목, POINT 점수
from student_main,student_point
where student_main.id= student_point.id;

--2번 
SELECT M.NAME 이름, P.SUBJECT 과목, P.POINT 점수, P.GRADE 등급
FROM student_point P, student_MAIN M
WHERE P.ID = M.ID; 

--3번 student_MAIN student_Point gradeCheck    	조인을 하여 이름/과목/학점등급 
CREATE TABLE GRADECHECK(ID VARCHAR(5),TOTGRADE VARCHAR2(2));
insert into GRADECHECK values('KDH','D');
insert into GRADECHECK values('KWM','C');
insert into GRADECHECK values('KMK','B');
insert into GRADECHECK values('JGH','A');
SELECT * FROM GRADECHECK;

SELECT  M.NAME 이름, P.SUBJECT 과목, G.TOTGRADE 학점
FROM STUDENT_MAIN M, STUDENT_POINT P, GRADECHECK G 
WHERE M.ID = P.ID AND G.ID=P.ID;


/*
과제03
outer join을 활용하여 group을 활용하여
부서명별 인원을 확인하려고 한다.
아래의 형식으로 출력하세요 인원이 없는 곳은 0으로 표시
부서명 인원  
*/

SELECT * FROM DEPT;
SELECT * FROM EMP;

SELECT D.DNAME 부서명, COUNT(E.DEPTNO) 인원
FROM EMP E, DEPT D
WHERE E.DEPTNO(+) = D.DEPTNO
GROUP BY DNAME;


