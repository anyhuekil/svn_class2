/*
 * 과제
 * emp03 복사테이블 생성
 * 1. 입력 empno의 가장 작은수보다 -1, mgr:cleark의 mgr입력, sal: 평균연봉,
 * 		comm : 전체 comm의 합계
 * 2. 수정 ename : '신길동', job은 SUPERMAN, hiredate는 최근에 입사일 + 1
 * */
 
create table emp05 as select * from emp;
select empno , mgr, sal, job from emp05;
select avg(sal) from emp;
insert into emp05(empno, mgr, sal) values('7368' , '7902', 2073);
update emp05 set ename='신길동', hiredate = sysdate + 1, job = 'SUPERMAN' where deptno = '7368';


  /*
 
 과제 
 login 하는 화면능ㄹ 만들고 id와 password를 치크하고, 다음 화면에서 id@@@님 환영합나디ㅏ.
 남은 point는 @@@ 입니다. 라는 내용이 나타난다고 한다.
 이에 필요로 하는 테이블과 테이블 구조를 만드세요....
 
 */

create table data_Login(
 	idx number NOT NULL PRIMARY KEY,
 	ID varchar(50) NOT NULL,
 	PASS varchar(100) NOT NULL,
 	POINT number NOT NULL
);

/* 숙제
 * 
 * 참조키 관계에 있는 테이블 구성하기
 * 
 * 메인 테이블 student_main(id, pass, name) : 아이디, 패스워드, 이름
 * 서브테이블 student_point(id, subject, point) : 아이디, 과목, 점수
 * 	student_main과 student_point id로 foreign key 관계를 설정하고,
 * 	student_main에 데이터가 있어야만 student_point를 입력할 수 있다.
 *  
 * */
create table student_main(
	ID varchar2(50) NOT NULL PRIMARY KEY,
	PASS varchar2(100) NOT NULL,
	NAME varchar2(100) NOT NULL
);

insert into student_main(ID, PASS, NAME) values('yive', '852', '건우');

create table student_Point(
	ID varchar2(50) references student_main(ID),
	PASS varchar2(100),
	Point number NOT NULL
);


