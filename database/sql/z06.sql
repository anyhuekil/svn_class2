/*
   인덱스란?
   데이터에 빠르게 접근하는 것을 도와줌으로서 데이터베이스의 성능향상에 도움을 주는 객체
   
   1)장점
   - 검색속도가 빨라진다
   - 시스템에 걸리는 부하를 줄여서 시스템 전체 성능을 향상시킨다.
   2)생성시점
   - 설계(논리설계, 물리설계), 테이블 생성, 데이터 입력, 생성
   - 운영단 데이터 부하시 생성
   3) 사용 여부
   - 테이블의 행의 수가 많은 때 (데이터 건수)
   - where 문으로 index에 해당 컬럼에 많이 사용될 때 (조회문)
   
   ps) 테이블에 입력, 수정, 삭제가 자주 일어나면 사용하지않는 것이 일반적
   -검색 결과가 전체 데이터의 2~4%정도일 때
   ex) 1,000만건의 데이터가 있는 인사정보의 경우 검색을 20~40만건 안에 데이터를 로딩해서 사용할 때
*/
/*
   인덱스 생성 예제 만들기
   1. 복사테이블 만들기
   create table EMP_IDX_EMP
   AS
   SELECT * FROM EMP;
   2.인덱스 처리할 컬럼 지정
   EMP_IDX_EMP에서 EMPNO로 INDEX지정
   3.인덱스 생성(해당 테이블에 인덱스 매핑)
   CREATR INDEX 인덱스 이름
   ON 생성할 테이블명(생성대상 칼럼)
   CREATE INDEX INDEX_EMPNP_EMP_IDX_EXP
   ON EMP_IDX_EXP(EMPNO);
*/
CREATE TABLE EMP_IDX_EXP
AS
SELECT * FROM EMP;
-- EMP_IDX_EXP테이블에 EMPNO에 INDEX를 설정한다.
CREATE INDEX INDEX_EMPNO_EMP_IDX_EXP
ON EMP_IDX_EXP(EMPNO);
SELECT * FROM EMP;
--인덱스 삭제
--DROP INDEX 인덱스 이름
DROP INDEX INDEX_EMPNO_EMP_IDX_EXP;
/*
   확인예제
   DEPT 테이블 복사본 DEPT_IDX_EXP 만들고
   인덱스 이름은 IDX_DEPTNO_DEPT로 해서 생성, 확인 및 삭제처리
*/
CREATE TABLE DEPT_IDX_EXP AS SELECT * FROM DEPT;
CREATE INDEX INDEX_DEPTNO_DEPT ON DEPT_IDX_EXP(DEPTNO);
SELECT * FROM DEPT_IDX_EXP;
DROP INDEX INDEX_DEPTNO_DEPT;
-- 전체 데이터 건수를 확인하세요
-- count (컬럼,전체(*))
SELECT COUNT(*) CNT, COUNT(COMM) BONUS_CNT FROM EMP;
SELECT COUNT(DISTINCT JOB) FROM EMP;
-- 그룹 함수와 조건문 처리
-- 연봉이 3000 이상인 사원중에 직책별로 인원수를 구하세염
SELECT JOB, COUNT(JOB) FROM EMP WHERE SAL>=3000 GROUP BY JOB;
-- 확인예제
-- 입사일이 1월에서 3월인 사람의 부서별로 인원수를 체크하숑
SELECT COUNT(*) "입사일 1~3월" FROM EMP WHERE HIREDATE;
SELECT ENAME, HIREDATE FROM EMP WHERE HIREDATE;
SELECT DEPTNO,COUNT(DEPTNO) CNT FROM EMP WHERE TO_NUMBER(TO_CHAR(HIREDATE,'MM')) BETWEEN 1 AND 3 GROUP BY DEPTNO;
SELECT HIREDATE, FLOOR(TO_NUMBER(TO_CHAR(HIREDATE,'MM'))/4) FROM EMP;
-- 특정 함수가 처리된 데이터를 그룹별로 통계치를 내게 할 때 , 활용됨
SELECT FLOOR(TO_NUMBER(TO_CHAR(HIREDATE,'MM'))/4)+1 PART, COUNT(*) FROM EMP GROUP BY FLOOR(TO_NUMBER(TO_CHAR(HIREDATE,'MM'))/4);
/*
   연봉 단위별로 인원수를 체크하세요
   범위      사원수(최고치,최저치,평균치)
   1000미만   ##
   ~2000미만   ##
   ~3000미만   ##
   ~4000미만   ##
   ~5000미만   ##
   ~6000미만   ##
*/
/*
   그룹별로 데이터의 통계치 처리하기
   SELECT 처리할 그룹 컬럼, 그룹함수
   FROM 테이블명
   WHERE 조건 (그룹을 처리하기 위한 조건)
   GROUP BY 처리할 구릅 컬럼
   HAVING 그룹에 대한 조건 처리(그룹이 된 후에 조건)
   부서번호별로 총합산 연봉액을 출력하세요
*/
/*
   HAVING 조건
   GROUP BY 안에 주어진 그룹의 데이터에 대한 조건을 처리하고자 할 때 활용된다
   EX)부서별로 평균연봉을 처리하고, 그그룹별 평균연봉에서 2000 이상인 데이터를 로딩
*/
SELECT DEPTNO, AVG(SAL) FROM EMP WHERE SAL>=2000 GROUP BY DEPTNO;
SELECT DEPTNO, AVG(SAL) FROM EMP GROUP BY DEPTNO HAVING AVG(SAL)>=2000;
--보너스가 있는 사원의 이름과 부서명을 출력
SELECT * FROM SALGRADE;
--급여 등급을 5개로 나누고 이 등급을 표시하시오
--WHERE SAL BETWEEN [LOSAL] AND [HISAL]
--이름과 연봉 연봉등급
--테이블 ALIAS 사용하기 : 테이블의 컬럼에 같은 이름이 없으면 의미가 없지만
--같은 이름이 있으면 구분하기 위해 테이블명[공백]ALIAS를 활용
--테이블ALIAS.컬럼명
--또한, 데이터 컬럼의 명이 많아 가독성을 위해 기술하는 경우도 있다.
SELECT E.ENAME, E.SAL, S.GRADE FROM EMP E, SALGRADE S WHERE E.SAL BETWEEN S.LOSAL AND S.HISAL;
/*
   student10 아이디, 이름
   studentPoint 아이디, 과목, 점수
   gradeCheck 최저점수 loPoint, 최고점수 hiPoint, 학점 등급(A~F)
   1) 아이디를 조인해서(equal join)
      이름 과목 점수 출력
   2) 점수를 조인해서(not equal join)
      과목 점수 학점등급
   3) student10 studentPoint gradeCheck 조인하여
      이름 과목 학점등급
*/
/*
   outer join
   두개의 조인 관계에 있는 테이블에 있어 한쪽 또는 양쪽다
   조건이 만족하지 않아도 데이터 결과를 출력해야 하는 경우에 활용되는 조인   
   where 데이터가 없는 테이블.컬럼명(+) = 데이터가 있는 테이블.컬럼명
*/
select * from dept;
select distinct deptno from emp;
-- 부서번호별로 매칭되는 사원 이름을 출력하되, 이름이 없으면 없다는 표시가 필요
select e.name, d.deptno, d.dname, nvl(e.ename,'인원없음') ename from emp e, dept d where e.deptno(+) = d. deptno order by e.deptno;
/*
   숙제) outer join, group을 활용하여 부서명별 인원을 확인하려고 한다.
   아래의 형식으로 출력하세요 인원이 없는 곳은 0으로 표시
   부서명 인원
*/
/*
   selfjoin : 말그대로 자기 자신과 조인을 맺는것을 말한다.
   form절에 같은 이름을 테이블을 나열하여 다른테이블인 것처럼 인식해서
   
*/
/*
select * from emp;
SELECT *
FROM 테이블명 ALIAS01, 동일 테이블명 ALIAS02
WHERE ALIAS01.연관컬럼 = ALIAS2.연관컬럼
*/
SELECT WORK.ENAME, WORK.MGR, MANAGER.ENAME
FROM EMP WORK, EMP MANAGER
WHERE WORK.MGR = MANAGER.EMPNO;
/*
   계층형 JOIN관계 정보 테이블 만들기(SELF JOIN)
   1. 구조를 정리한다
      ID와 상위 ID를 입력하는, KEY를 만든다.
      numid, parentnumid, role01, name
      아이디, 상위아이디, 역할  , 이름
   2. 테이블을 생성한다
      create table family(
         numid number,
         parentnumid number,
         role01 varchar2(100),
         name varchar2(500)
      );
   3. 데이터를 입력한다. (위에 세워놓은 계층형 구조에 의한 데이터 입력처리)
      insert into family values(1,0,'할아버지','홍길동');
      insert into family values(2,1,'아버지','홍정길');
      insert into family values(3,2,'아버지','홍현호');
      insert into family values(4,1,'삼촌','홍진호');
   4. 입력된 데이터 내용이 정상적으로 되어있는지 확인한다.
      -조회 처리...
*/


create table family(
         numid number,
         parentnumid number,
         role01 varchar2(100),
         name varchar2(500)
      );
      insert into family values(1,0,'할아버지','홍길동');
      insert into family values(2,1,'아버지','홍정길');
      insert into family values(3,2,'아버지','홍현호');
      insert into family values(4,1,'삼촌','홍진호');
	  select * FROM family;
/* 이름 role 상위이름
*/
SELECT cur.name, cur.role01, par.name pname
from family cur, family par
where cur.parentrumid=par.nuid;
