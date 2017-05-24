
/**1번 과제**/
create table emp03 as select * from emp; --emp03 복사테이블 생성

select min(empno)-1, avg(sal), sum(comm) from emp03; 
-- empno의 가장 작은수 -1 = 7368, sal의 평균연봉 = 2073.21, comm합계=2200

select mgr from emp03 where ename='CLARK';
-- clark의 mgr = 7839

select max(hiredate)+1 from emp03; -- 최근 입사일 + 1 = 1983/01/13

insert into emp03(empno, mgr, sal, comm) values(7368,7839,2073.21,2200);
update emp03 set ename='신길동', job='SUPERMAN', hiredate='1983/01/13'
where empno=7368;
commit;

select * from emp03;

/**2번 과제**/
create table loginData(id varchar2(10) not null, password varchar2(20) not null,
userpoint number(10));

commit;

select * from loginData;


/**3번 과제**/

create table student_main(
id varchar2(15) primary key,
pass varchar2(20) not null,
name varchar2(20) not null
);

select * from student_main;
select * from student_point;

create table student_point(
id varchar2(15) REFERENCES student_main(id),
subject varchar2(10),
point number(5)

);
insert into student_point values ('sdf','asd',1000);
insert into student_main values ('sdf','asd','홍길동');


/***1번과제*** 
emp03 복사테이블 생성
1. 입력 empno의 가장 작은수보다 -1, mgr:clark의 mgr입력, sal:평균연봉, comm:전체 comm의 합계
2. 수정 ename:'신길동', job은 SUPERMAN, hiredate는 최근에 입사일+1

***2번과제*** 
과제 login하는 화면을 만들고 id와 password를 체크하고, 다음 화면에서
id @@@ 님 환영합니다. 남은 point는 @@@입니다. 라는 내용이 나타난다고 한다.
이에 필요로 하는 테이블과 테이블 구조를 만드세요

*/
