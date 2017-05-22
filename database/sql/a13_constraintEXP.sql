/*
NOT NULL 제약조건
해당 컬럼의 값이 반드시 입력되어야지, 처리되게끔 설정.
 EX) a01_not_nullExp 테이블에 
 	empno, ename에 not null설정한 테이블
	a02_nullExp 테이블에
	 empno, ename에 not null을 설정하지 않는 테이블
*/
create table a01_not_nullExp(
	empno number not null, --제약조건을 not null 설정
	ename varchar2(20)not null,--제약조건을 not null 설정
	job varchar2(20)
);

create table a02_nullExp(
	empno number, --제약조건을 not null 설정
	ename varchar2(20), --제약조건을 not null 설정
	job varchar2(20)
);

select * from a02_nullExp;
select * from a01_not_nullExp;
rollback;
--1) 데이터를 입력시, 묵시적null값 입력
insert into a01_not_nullExp(job) values('프로그래머1'); --제약조건에러발생
insert into a01_not_nullExp(empno,ename,job) values(7000,'홍길동','프로그래머1'); 
insert into a02_nullExp(job) values('프로그래머1');
--반드시 empno, ename을 입력하여야 한다. 
--2) 데이터 입력시, 명시적 null값 입력 











