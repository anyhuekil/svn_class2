/* ★  ★  ★  ★  ★  ★  ★
확인예제(11:00실행) : STUDENT 라는 학생 테이블에 컬럼으로 학번, 이름, 학과를 설정한 후에,
		제약조건으로 학번에 UNIQUE를 설정해서 생성하세요.
		데이터 입력으로 해당 내용이 처리되는지 확인
		데이터 딕션너리를 통해서 제약조건이 등록되어 있는지 확인
★  ★  ★  ★  ★  ★  ★  */
CREATE TABLE STUDENT (
	HAKBUN VARCHAR2(10) UNIQUE,
	NAME VARCHAR2(30) NOT NULL,
	MAJOR VARCHAR2(30)
);
INSERT INTO STUDENT VALUES ('20121212','홍홍홍','컴공');
INSERT INTO STUDENT VALUES ('20121212','홍홍홍','컴공');
SELECT CONSTRAINT_NAME, CONSTRAINT_TYPE, TABLE_NAME
	FROM USER_CONSTRAINTS WHERE TABLE_NAME='STUDENT';
