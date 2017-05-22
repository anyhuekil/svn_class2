/*
숙제 
emp03 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr: clerk의 mgr입력, sal: 평균연봉,
	comm: 전체 comm의 합계
2. 수정 ename: '신길동',job은 superman, hiredate는 최근에 입사일+1 
*/		
/*
4. delete: 확정 조건의 데이터를 삭제처리하는 구문
	delete [없음] from 테이블명
	where 조건[컬럼명 = 조건 데이터]
*/
select * from emp03;
create table emp03 
as select * from emp;
select min(empno)-1 from emp03;
select max(hiredate)+1 from emp03;
insert into emp03 (empno,mgr, sal, comm) values(7368,7902,(select avg(sal) from emp03),(select sum(comm) from emp03));
update emp03 set ename='신길동',
				 job='SUPERMAN',
				 hiredate='1983/1/14'
				 where empno=7368;
delete from dept01
where dname='sales';
select * from dept01;
delete from dept01
where deptno=50;

/*
과제 login 하는 화면을 만들고 id와 password를 체크하고, 다음 화면에서 
id@@@님 환영합니다. 남은 point는 @@@입니다. 라는 내용을 나타난다고 한다. 
이에 필요로 하는 테이블과 테이블 구조를 만드세요. 
*/
create table forlogin(id char(10), password varchar2(20), pointC number(10));
select * from forlogin;
select * from emp;
/*
숙제
참조키 관계에 있는 테이블 구성하기

메인테이블 student_main(id, pass, name) : 아이디, 패스워드, 이름
서브테이블 sutdent_point(id, subject, point);  아이디, 과목, 점수
	student_main과 student_point id로 foreign key 관계를 설정하고,
	student_main에 데이터가 있어야만 student_point를 입력할 수 있게끔 처리. 
*/
create table student_main(id char(10) primary key, pass varchar2(20), name char (10));
commit;
insert into student_main(id,pass,name) values('ddd','wsssd','김김김');
create table student_point(	id char(10) references student_main(id),
								subject char(10),
								getPoint number(5)
							);
select * from student_main;
select * from student_point;


