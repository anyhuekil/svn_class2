/*
emp03 복사테이블 생성 // 완료
1. 입력 empno의 가장 작은수보다 -1, mgr:clark의 mgr입력, sal:평균연봉, comm:전체 comm의 합계
2. 수정 ename:'신길동', job은 SUPERMAN, hiredate는 최근 입사일+1
*/
create TABLE emp03
as select * from emp;
select * from emp03;
-- 조건찾기
select min(empno)-1 from emp03; -- 7368
select mgr from emp03 where ename='CLARK'; -- 7839
select round(avg(sal)) from emp03; -- 2073
select sum(comm)from emp03; -- 2200
select max(hiredate)+1 from emp03; -- 01/13/1983
-- 입력
insert into emp03(empno,mgr,sal,comm)
values(7368,7839,2073,2200);
commit;
-- 업데이트
update emp03
	set ename='신길동',
		job='SUPERMAN',
		hiredate=to_date('1983/01/13','YYYY/MM/DD')
where empno=7368;
-- 확인
select * from emp03 where empno=7368;

/*
과제 // 완료
login하는 화면을 만들고 id와 password를 체크하고, 다음 화면에서
id@@@님 환영합니다 남은 point는 @@@입니다 라는 내용이 나타난다고 한다
이에 필요로 하는 테이블과 테이블 구조를 만드세요
*/

create table login( id varchar2(12), password varchar2(20), point number(4) );
select * from login;

/*과제 // 완료
참조키 관계에 있는 테이블 구성하기

메인테이블 student_main(id, pass, name) : 아이디, 패스워드, 이름
서브테이블 student_point(id, subject, point) : 아이디, 과목, 점수
	student_main과 student_point를 id로 foreign key 관계를 설정하고,
	student_main에 데이터가 있어야만 student_point를 입력할 수 있게 처리
*/
create table student_main(
	id char(12) primary key,
	pass char(20),
	name char(20)
);

create table student_point(
	id char(12) REFERENCES student_main(id),
	subject01 char(10),
	point number(2,0) 
);

select * from student_point;

















