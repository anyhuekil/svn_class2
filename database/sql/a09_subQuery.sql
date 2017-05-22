/*
subquery?
하나의 selcet문장의 절 안에 포함된 또 하나의 select 문장을 말한다.
서버쿼리를 포함하고 있는 쿼리문을 메인쿼리(main query),
포함된 또 하나의쿼리를 서브 쿼리(subquery)라고 한다.
ex) 사원테이블에서 연봉이 최고로 많은 사람의 이름과 연봉을 list 하세요..

SELECT ENAME, SAL --> MAIN QUERY
FROM EMP
WHERE SLA = (SELECT MAX(SAL) FROM ENP) --> SUBQUERY
작성시 주의점
1. 서버쿼리는 비교 연산자(=,>,<...)의 오른쪽에 기술해야 하고 괄호로
둘러싸 주는 것이 일반적이다.
2. 서버쿼리는 메인 쿼리가 실행되기 이전에 실행된다.

서버쿼리의 유형
1. 조건의 값으로 처리되는 경우.
	SELECT *
	FROM 테이블
	WHERE 컬럼명 = (SELECT 컬럼 FROM 테이블 WHERE 조건);
	## 단일값 조건: =,>,< (비교연산자 활용)
	다중값 조건 : IN, EXIST, ANY, ALL

2. 테이블로 자체로 SUBQUERY 처리하는 경우..
	SELECT * 컬럼명1+컬럼명2, ....
	FROM (SELECT 컬럼명1, 컬럼명2, 함수(컬럼명3)
			FROM 테이블명
			WHER 조건 )
	WHERE 조건;
	
3. SELECT (SELECT 컬럼1 FROM 테이블명 WHERE 조건=메인조건1),
	컬럼2, 컬럼3
	FROM 테이블
	WHERE 조건...
	
	
*/
-- 1. 조건값으로 SUBQUERY가 사용되는 경우.
--	EX) 평균연봉보다 많은 사람들의 이름과 연봉을 출력하세요.
SELECT ENAME, SAL
FROM EMP
WHERE SAL>(SELECT AVG(SAL) FROM EMP);
-- EX) 
SELECT * FROM EMP;

SELECT MAX(COMM)
FROM EMP;
-- EX) 보너스가 있는 사람들의 중, 평균 보너스보다 높은 출력하세요..
SELECT AVG(COMM)
FROM EMP
WHERE COMM IS NOT NULL;
