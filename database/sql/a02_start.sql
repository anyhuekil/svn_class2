-- 컬럼명에 이름(별명) 붙이기!!
select *FROM emp;
-- empno를 별칭으로 companyNo로 쓰기로 했다. 출력하세요..
-- 컬럼명 as 나타날 별칭컬럼명 alias
select empno as comanyNo from emp;
-- 별칭은 프로그램 영역에서 중요한 의미를 가진다..
-- 대다수 프로그램은 별칭으로 간편하게 사용하는 경우가 많다.
-- ex) rs.getString("별칭/컬럼명")
-- as 대신에 공백('')으로 처리한다.
select '사번은'||empno|| ' 입니다!' show FROM emp;
-- 실제 application에서는 rs.getString("show")로 처리된다.
select * FROM emp;
-- 다음의 내용을 변경된 컬럼으로 나타내세요..
-- 컬럼명		depandname	upgradeRatio	enterCompany
-- 출력데이터	(부서번호)이름	연봉의10%			입사년월일
SELECT '('||deptno||') '|| ename depandname, sal*0.1 upgradeRation, hiredate enterCompany FROM emp;
-- 공백값을 별칭으로 처리하기.. " " 사이 별칭명을 적어준다.
SELECT ename "name intro" from emp;
-- 한글을 별칭으로 처리할 때도, " " 사이에 처리
select deptno "부서번호" from emp;

select * from emp;
-- 중복값 처리 : 데이터베이스에서는 동일한 값을 입력하는 것을 테이블 단위로 입력하는 것을 꺼려한다.
-- 컬럼에 있는 모든 데이터가 동일해서는 안된다는 말이다.
-- 그런데, 한개 컬럼으로 조회할 때는 동일한 데이터가 나타날 수 있다.
select deptno from emp;
-- 일때, 하나 또는 다수의 컬럼의 데이터가 동일한 것을 filtering 해주는 처리가 있는데 이를 distinct라고 한다.
-- 활용형식 select distinct 컬럼1, 컬럼2 from 테이블
select distinct deptno from emp;

select * from emp;
-- -mgr을 동일값없이 출력
-- job과 ngr 컬럼이 동일값 없이 출력하세요
select DISTINCT job, mgr from emp;
select mgr from emp;
select job, mgr from emp;

--연봉이 3000이상인 데이터를 list처리
-- where 컬럼명 > 조건데이터
select * from emp where sal>=3000;

select * from emp where mgr != 7698;

-- 열과 행의 두가지 조건을 갖춘 데이터 list하기
-- 행의 multi 조건에 대한 처리
select * from emp;
--연봉이 3000이상인 사람의 이름과 연봉을 list
select ename, sal from emp where sal >=3000;

-- 연봉이 2000 이하
select ename "이름", job "직책",sal "연봉" from emp where sal<=2000 and job='SALESMAN'; 
----------------------------------------------------------------------------------
-- empno : 사원번호, ename : 사원이름, job : 직책, mgr : 관리자의 사번,         --
-- hiredate : 입사일, sal : 연봉, comm : 보너스, deptno : 부서번호            --
----------------------------------------------------------------------------------
select * from emp2;

-- 1.emp중에 급여가 2000미만이 되는 사원 정보중에 사번과 급여 출력
select empno, sal from emp where sal<2000;
-- 2.연봉과 보너스의 합산금액이 1500미만인 사람의 이름, 연봉, 보너스, 합산액 출력
SELECT * FROM emp;
select ename, sal, nvl(comm,0),sal+nvl(comm,0) from emp where nvl(comm,0)+sal<1500;
-- 3.mgr이 null인 사람의 이름 연봉 출력
select ename, sal from emp where mgr is null;
-- 4.job이 clerk인 사람중 deptno가 30인 사람의 이름, 직책, 부서번호를 출력
select ename, job, deptno from emp where  job ='CLERK' and deptno=30;
-- 5.연봉이 2000에서 3000 사이에 있는 사람의 부서번호, 이름 , 연봉출력
select deptno, ename, sal from emp where sal>=2000 and sal<=3000;

DROP TABLE EMP;
CREATE TABLE EMP

       (EMPNO NUMBER(4) NOT NULL,

        ENAME VARCHAR2(10),

        JOB VARCHAR2(9),

        MGR NUMBER(4),

        HIREDATE DATE,

        SAL NUMBER(7, 2),

        COMM NUMBER(7, 2),

        DEPTNO NUMBER(2));




INSERT INTO EMP VALUES

        (7369, 'SMITH',  'CLERK',     7902,

        TO_DATE('17-12-1980', 'DD-MM-YYYY'),  800, NULL, 20);

INSERT INTO EMP VALUES

        (7499, 'ALLEN',  'SALESMAN',  7698,

        TO_DATE('20-02-1981', 'DD-MM-YYYY'), 1600,  300, 30);

INSERT INTO EMP VALUES

        (7521, 'WARD',   'SALESMAN',  7698,

        TO_DATE('22-02-1981', 'DD-MM-YYYY'), 1250,  500, 30);

INSERT INTO EMP VALUES

        (7566, 'JONES',  'MANAGER',   7839,

        TO_DATE('02-04-1981', 'DD-MM-YYYY'),  2975, NULL, 20);

INSERT INTO EMP VALUES

        (7654, 'MARTIN', 'SALESMAN',  7698,

        TO_DATE('28-09-1981', 'DD-MM-YYYY'), 1250, 1400, 30);

INSERT INTO EMP VALUES

        (7698, 'BLAKE',  'MANAGER',   7839,

        TO_DATE('01-05-1981', 'DD-MM-YYYY'),  2850, NULL, 30);

INSERT INTO EMP VALUES

        (7782, 'CLARK',  'MANAGER',   7839,

        TO_DATE('09-06-1981', 'DD-MM-YYYY'),  2450, NULL, 10);

INSERT INTO EMP VALUES

        (7788, 'SCOTT',  'ANALYST',   7566,

        TO_DATE('09-12-1982', 'DD-MM-YYYY'), 3000, NULL, 20);

INSERT INTO EMP VALUES

        (7839, 'KING',   'PRESIDENT', NULL,

        TO_DATE('17-11-1981', 'DD-MM-YYYY'), 5000, NULL, 10);

INSERT INTO EMP VALUES

        (7844, 'TURNER', 'SALESMAN',  7698,

        TO_DATE('08-09-1981', 'DD-MM-YYYY'),  1500, NULL, 30);

INSERT INTO EMP VALUES

        (7876, 'ADAMS',  'CLERK',     7788,

        TO_DATE('12-01-1983', 'DD-MM-YYYY'), 1100, NULL, 20);

INSERT INTO EMP VALUES

        (7900, 'JAMES',  'CLERK',     7698,

        TO_DATE('03-12-1981', 'DD-MM-YYYY'),   950, NULL, 30);

INSERT INTO EMP VALUES

        (7902, 'FORD',   'ANALYST',   7566,

        TO_DATE('03-12-1981', 'DD-MM-YYYY'),  3000, NULL, 20);

INSERT INTO EMP VALUES

        (7934, 'MILLER', 'CLERK',     7782,

        TO_DATE('23-01-1982', 'DD-MM-YYYY'), 1300, NULL, 10);

        

CREATE TABLE DEPT

       (DEPTNO NUMBER(2),

        DNAME VARCHAR2(14),

        LOC VARCHAR2(13) );




INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');

INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');

INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');




CREATE TABLE SALGRADE

        (GRADE NUMBER,

         LOSAL NUMBER,

         HISAL NUMBER);




INSERT INTO SALGRADE VALUES (1,  700, 1200);

INSERT INTO SALGRADE VALUES (2, 1201, 1400);

INSERT INTO SALGRADE VALUES (3, 1401, 2000);

INSERT INTO SALGRADE VALUES (4, 2001, 3000);

INSERT INTO SALGRADE VALUES (5, 3001, 9999);    

