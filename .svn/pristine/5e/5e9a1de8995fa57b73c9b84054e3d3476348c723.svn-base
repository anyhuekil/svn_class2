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

select * from a01_not_nullExp;
select * from a02_nullExp;
-- 묵시적 null값 입력. 제약조건이 있기에 에러발생
insert into a01_not_nullExp(job) VALUES ('프로그래머1');
-- 평시적 null값 입력
-- 테이블명 (컬러명,x) > 전체 컬럼에 대한 입력을 처리
-- values(전체 컬럼에 들어갈 데이터를 명시)
insert into a02_nullExp values(null,'홍길동','프로그래머2');
insert into a01_not_nullExp values(null,'신길동','프로그래머2');
select * from a02_nullExp;
-- 명시적으로 null값에 호출하더라도 제약조건이 하나라도 있으면 입력이 되지 않는다.

/*
   Data Dictionary를 통해 constraints 확인하기 
   constraint Type
   제약조건의 유형에 대한 내용을 선언하는 부분
   P : Primary Key : ##
      제약조건에 NOT NULL, UNIQUE를 설정한다. 보통 메인테이블에서 KEY로 정의하는 컬럼 설정
   R : Foreign Key : 해당 컬럼에 데이터가 참조한 다른 테이블에 데이터가 반드시 있어야 처리되는 경우
      EX) dept에 deptno인 경우, 부서번호에 대한 정보. 부서정보, key deptno가 등록되어 있어야 
      emp테이블에서 deptno에 데이터를 입력할수 있게끔 처리해야 무결성을 지킬수 있다.
   U : Unique (유일키 설정) : 해당 컬럼의 데이터가 다른 컬럼의 데이터와 비교해서
      반드시 하나의 유일한 데이터가 되게할 때 설정하는 옵션
      EX) DEPT테이블에 DEPTNO가 다른데이터와 비교해 같은 DEPTNO로 다른 DNAME(부서이름)이 입력되게
      되면 데이터 무결성에 문제가 발생하기에 이를 입력 당시 사전에 에러를 발생시켜 무결성을 확보하기 위해서 처리한다.
      20 회계감사
      20 총무     => 무결성에 문제를 발생시킴
   C : CHECK : 특정한 컬럼에 특정한 데이터만 들어오게 처리하는 제약조건을 말한다.
      EX) EMP에 컬럼으로 GENDER(성별)을 설정했을 때, F(여자), M(남자)만 들어오게 하여 데이터 자체에 대한 통일을 유지하여
      무결성 확보를 하기 위한 목적으로 사용된다.
*/

select * from user_constriaints;

/*
   Unique : 유일키 설정 처리...
   1. 연습테이블 만들기(emp03)
   2. 컬럼에 유일키 설정하기(unique)
   3. 데이터 입력 데스트 - 데이터가 동일할 때, 어떤 에러가 발생하는지 확인
   4. 데이터 딕셔너리에서 해당 제약사항 확인하기
*/

CREATE TABLE EMP03(
   EMPNO NUMBER UNIQUE, -- EMPNO가 중복이 되지 않게 제약조건 설정
   ENAME VARCHAR2(30),
   JOB VARCHAR2(30)
);
SELECT * FROM EMP03;
INSERT INTO EMP03 VALUES (1000,'ALLEN','SALESMAN');
INSERT INTO EMP03 VALUES (1001,'JONES','NANAGER');
-- 동일한 값 1000은 컬럼으로 설정시 UNIQUE로 설정했기에 에러가 발생한다.
INSERT INTO EMP03 VALUES (1000,'HIMAN','SUPERMAN');

SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
FROM USER_CONSTRAINTS 
WHERE TABLE_NAME='EMP03';

/*
   확인예제
   STUDENT 라는 학생 테이블에 컬럼으로 학번, 이름, 학과를 설정한 후에,
   제약조건으로 학번에 UNIQUE를 설정해서 생성하세요.
   데이터 입력으로 해당 내용이 처리되는지 확인
   DATA DICTIONARY를 통해서 제약조건이 등록되어 있는지 확인!
*/
CREATE TABLE STUDENT(
   S_NUM NUMBER UNIQUE ,
   S_NAME VARCHAR2(30) ,
   S_PART VARCHAR2(30) );
   
INSERT INTO STUDENT VALUES (1000,'이상혁','컴퓨터');
INSERT INTO STUDENT VALUES (1001,'정상혁','컴퓨터');
INSERT INTO STUDENT VALUES (1002,'이상혁','컴퓨터');
SELECT * FROM STUDENT;
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
FROM USER_CONSTRAINT
WHERE TABLE_NAME='STUDENT';

/*
   제약 조건명을 사용자 정의하기
   1. 테이블 생성시 설정
   형식
   CREATE TABLE 테이블명
      제약조건 선언 컬럼 데이터TYPE EX) EMPNO NUMBER
      CONSTRIANT 제약조건명(테이블명_컬럼명_제약조건유형축약)
      CONSTRAINT EMP_EMPNO_PK PRIMARY KEY,
   2. 제약조건을 따로 지정하여 설정하는 방법
   
*/
CREATE TABLE EMP05(
   EMPNO NUMBER CONSTRAINT EMP_EMPNO_PK PRIMARY KEY , 
   ENAME VARCHAR2(20)
);
SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='EMP05';

/*
   PROFESSOR 테이블을 생성하되
      PROID, NAME 둘다 CONSTRAINT를 설정하는데 NOT NULL, UNIQUE로 이름을 지정해서 설정하세요
*/
CREATE TABLE PROFESSOR(
   PROID NUMBER CONSTRAINT PROID_NOTNULL NOT NULL,
   NAME VARCHAR2(30) CONSTRAINT NAME_UNIQUE UNIQUE
);

SELECT * FROM USER_CONSTRAINTS WHERE TABLE_NAME='PROFESSOR';

/*
   하나의 컬럼이 아니라, 두개의 컬럼으로 제약조건을 선언하는 경우
   EX) 학생 테이블을 KEY을 컬럼을 신규로 생성하는 것이 아니라.
   GRADE(학년) PART(반) NO(번호) 이름..
   형식
      CREATE TABLE 테이블명(
         컬럼명1 데이터TYPE,
         컬럼명2 데이터TYPE,
         컬럼명3 데이터TYPE
      );
   한꺼번에 다중의 컬럼으로 제약조건을 처리함으로 해당 내용에 대한 KEY 컬럼을 신규작성할 필요가
   없을 때, 활용된다. 단 위제약조건 해당 내용에 한꺼번에 처리하지 않으면 에러가 발생..
*/

CREATE TABLE HIGHSCHOOL(
	GRADE NUMBER,
	PART NUMBER,
	NO NUMBER,
	CONSTRAINT HIGHSCHOOL_DIST_PK PRIMARY KEY(GRADE, PART, NO)
	-- HIGHSCHOOL 테이블에 PRIMARY KEY를 3개의 컬럼으로 잡은데, GRADE, PART, NO
	-- GRADE, PART, NO를 동시에 조합해서 동일한 데이터가 안 나오게 처리..
);
INSERT INTO HIGHSCHOOL VALUES(1,1,2, '김길동');
INSERT INTO HIGHSCHOOL VALUES(1,1,3, '신길동');
SELECT * FROM HIGHSCHOOL;
SELECT * 
FROM user_constrints
WHERE table_name='HIGHSCHOOL';
/*확인 예제
	ADDRESS 라는 테이블에
			도/광역시	시/구군	동	번지	세대주
		을 설정하여 데이터를 확인하는 테이블에서,
		PRIMARY KEY (도/광역시	시/구군	동	번지)를 잡아서 처리하고자 한다.
		테이블 설정하고 데이터를 입력해서 정상적으로 다중 PRIMARY KEY가 잡혀
		있는지 확인하세요..

*/
SELECT * FROM ADDRESS;


/*
1. 테이블생성시, 설정
	형식
	create table 테이블명
		제약조건선언할컬럼 데이터 type ex) empno number
		constraint 제약조건명(테이블명_컬럼명_제약조건유형축약) 제약조건
							ex) constraint emp_empno_pk primary key,
2) 제약조건을 따로 지정하여 설정하는 방법..
	1) 테이블 생성
	2) ALTER TABLE 테이블명
		ADD	CONSTRAINT 제약조건명 제약조건유형(컬럼명)
		MOOIFY 컬럼명 COMSTRAINT 제약조건명 제약조건유형
		DROP 제약조건명

*/