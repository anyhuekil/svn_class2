/*
여러가지 고급 DML query!!
1. 다중행 테이블에 다중행 입력하기..
	insert 구문을 여러번 써서 데이터를 입력하는 경우가 많은 데이터를 입력
	할 때 번거러운 경우가 있다. 
	한 번은 suberquery를 통해서 여러 동일한 구조의 테이블에 입력할 때,
	insert all 구문을 활용하면 손쉽게 처리할 수 있다. 
	1) 형식
	insert all
	into 테이블1명 values(컬럼1, 컬럼2, 컬럼3)
	into 테이블2명 values(컬럼1, 컬럼2, 컬럼4)
	select 컬럼1, 컬럼2, 컬럼3, 컬럼4
	from 테이블명
	where 조건
ex) emp테이블에서 구조복사테이블 생성
		emp_hir(empno, ename, hiredate)
		emp_mgr(empno, ename, mgr)
		원본 emp테이블에서 부서번호가 20인 데이터를 
		해당 테이블에 데이터 입력처리..
*/
--구조 복사 테이블 생성하기.
create table emp_hir
 AS 
 select empno, ename, hiredate from EMP
 where 1=0;
 select * from emp_hir; 

create table emp_mgr
 AS 
 select empno, ename, mgr from EMP
 where 1=0;
 select * from emp_hir; 
insert all
 into emp_hir values(empno, ename, hiredate)
 into emp_mgr values(empno, ename, mgr)
 select empno, ename, hiredate, mgr
 from emp
 where deptno=10;
 /*
 서브쿼리를 이용한 데이터 수정하기.
 update 테이블명
 set (변경할 칼럼1, 변경할칼럼2) = (select 칼럼1, 칼럼2 from 테이블)
 where 조건...
 ex) 20번 부서의 지역명을 40번 부서의 지역명으로 변경하기 위해서 서버쿼리를 활용해보자..
 
 */
create table dept01
as 
select * from dept;
select * from dept01;
-- 입력할 데이터 loading(subquery)
select dname, loc
from dept
where deptno=40;
--main query
update dept01 
set (dname, loc) = (select dname, 
loc from dept01 where deptno=40)
where deptno=20;
select * from dept01;
select * from EMP11;
/*확인예제
emp테이블의 복사본 emp11 생성
		job(직책)이 president에 있는 sal과 deptno를 
		job이 clerk에 있는 데이터로 update하세요.
*/
create table emp11 as SELECT * from emp;
update emp11 
set(sal,deptno)=(select sal,deptno from emp where job='PRESIDENT')
where job='CLERK';
select * from emp;
/*
MERGE 처리
DATA MINGRATION(데이터 이관처리)할때 많이 활용된다.
테이블A, 테이블B로 데이터를 이관처리시, 부서가 달라 입력되어 있는 데이터도 있고, 신규로 입력해야될 데이터도 있으며,
입력되어 있는 데이터는 특정 컬럼을 수정처리해야 될 경우 많이 활용된다. 
형식 ex) 테이블 a에 있으나 테이블b에는 없는 데이터는 insert처리
		테이블 a에 있고, 테이블b에 있으나 특정한 컬럼을 수정하는 것을 update처리
		두가지 내용을 한번에 처리하는 것을 merge라고 한다. 
	MERGE INTO 통합할테이블(EX) 테이블B
		USING 이전및참조할테이블 ex) 테이블a 
		on 조건처리-일반적으로 두 테이블의 key값을 조건으로 처리한다. 
									ex) 테이블a.컬럼01=테이블b.컬럼01
		when matched then --두개의 테이블에 key되는 데이터가 공통으로 있을 때.
			업데이트 관련처리					ex) 테이블a의 컬럼01과 테이블b에 컬럼01에 
			update set					해당데이터가 동일한 경우. 
							통합할테이블.변경할컬럼=이전및참조할테이블.컬럼
							ex)테이블B.변경할컬럼 = 테이블A.컬럼
			when not matched then -- 한쪽 테이블에 데이터가 없는 경우
							ex) 테이블a에는 있으나, 테이블b에는 없는 경우
						입력관련처리..
						insert[테이블x] values(이전및참조할테이블.컬럼....)
							ex)insert values(테이블B.컬럼명....);
*/						
/*
EMP01,EMP02 데이터를 로딩해서 EMP01에 데이터 머지처리
1. EMP01 복사테이블만들기
2. EMP02 복사테이블만들기 EMP에JOB="MANAGER"만...
   EMP02 JOB ==> 'TEST'로 UPDATE(##empno는 동일, job이 다른 데이터)
   EMP02 입력 7935 '홍길동', 'SUPERMAN' 7839 sysdate 4000 100 40
		(##empno가 emp01에는 없는 데이터)
*/
select * from emp order by empno desc;
create table EMP01 
as 
select * from emp; --emp01복사테이블 생성
select * from emp01; --이테이블에 머지처리..
create table emp02 
as 	
	select * from emp
	where job='MANAGER';
select * from emp02;
select * from emp01;
update emp02
set job='test';--emp02의 job을 'test'로 변경
--emp02입력 7935 '홍길동', 'superman' 7839 sysdate 4000 100 40
insert into emp02 values(7935, '홍길동', 'SUPERMAN', 7839, SYSDATE, 4000, 100,40);

merge into emp01 --최종 데이터는 emp01에 처리 
	using emp02   --emp02데이터를 사용함. 
	on (emp01.empno=emp02.empno) --해당 key값이 empno가 있는지 여부에 따라서 update/insert를 선택
when matched then --empno값이 같을 때..
	update set 
	  emp01.job = emp02.job --emp02.job 데이터 즉, 'TEST'데이터를 EMP01.JOB에 UPDATE
when not matched then --동일한 empno값이 emp01에 없을 경우, 
	insert values(emp02.empno,emp02.ename, emp02.job,emp02.mgr,
	emp02.hiredate, emp02.sal, emp02.comm, emp02.deptno);

/*
확인예제
EMP의 복사테이블 EMP03
EMP에서 부서번호(DEPTNO)가 30인 데이터를 EMP04로 복사테이블 만들기
	EMP04에 HIREDATE를 오늘날(SYSDATE)로 UPDATE처리.
EMP04에 7370 '원더걸' 'SUPERMAN' 7839 SYSDATE 6000 400 40 데이터 입력
두 테이블 머지처리..
*/
create table emp03 AS select * from emp;
create table emp04 as select * from emp where deptno=30;
select * from emp03;
select * from emp04;
update emp04 
	set hiredate = sysdate;
insert into emp04 values(7370, '원더걸', 'SUPERMAN', 7839, SYSDATE, 6000, 400, 40);
rollback;
merge into emp03
	using emp04
	on (emp03.empno=emp04.empno)
	when matched then
		update set
		emp03.hiredate=emp04.hiredate
	when not matched then
		insert values(emp04.empno,emp04.ename, emp04.job,emp04.mgr,
		emp04.hiredate, emp04.sal, emp04.comm, emp04.deptno);




















