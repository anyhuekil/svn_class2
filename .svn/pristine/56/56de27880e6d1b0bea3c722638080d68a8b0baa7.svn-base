
select * FROM emp 

-- 컬럼 지정 및 변경
/*
	insert into 테이블명(컬럼1, 컬럼2, 컬럼3)
					select 컬럼1, 컬럼1+컬럼2, 함수(컬럼3)
					from 테이블명
					where 조건..
insert into emp_structor(empno)
		select empno from emp;

INSERT INTO emp_structor(empno, sal, ename)
		select empno, sal+nvl(comm,0), rpad(ename,7,'^^') from emp;
	 
*/

/* 확인예제.
dept_sub 이라는 테이블을 dept테이블을 이용하여 만들되, 추가컬럼,
	kdname(한글이름), membercnt(등록된인원)
1) 구조만 있는 공백테이블 생성.
2) dept테이블을 이용해서 기존데이터와 추가된 데이터를 입력하세요.
 - 처음 : 한글이름-없음, membercnt = 0;


*/