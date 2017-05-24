/*
	숙제1.
	emp03 복사테이블 생성
	1. 입력 empno의 가장 작은수보다 -1, mgr : clerk의 mgr입력, sal : 평균연봉, comm : 전체 comm 합계
	2. 수정 enmae : '신길동', job은 SUPERMAN, 	hiredate는 최근입사일(sysdate)+1
*/	
	create table emp03 as select * from emp;
	select min(empno)-1 from emp03; -- 7638
	select mgr from emp03 where job='CLERK'; -- 7902
	select avg(sal) from emp03; -- 2073.21
	select sum(comm) from emp03; -- 2200
	insert into  emp03(empno,mgr,sal,comm) values(7638,7902,2073.21,2200);
	update EMP03
		set ename='신길동',
		job='SUPERMAN',
		HIREDATE=SYSDATE+1
	WHERE EMPNO=7638;

/*
	숙제
	login인 하는 화면을 만들고 id와 password를 체크하고, 다음 화면에서 id : @@@님 환영합니다. 남은 point는 @@@입니다. 라는 내용이 나타난다고 한다.
	이에 필요로 하는 테이블과 테이블 구조를 만드세요.
*/	
	create table login(
		id varchar2(10) unique,
		pw varchar2(10)
	);
	alter table login add(point number(10));

/*
	과제3.
	참조키 관계에 있는 테이블 구성하기	
	메인테이블 student_main(id,pass,name) : 아이디, 패스워드, 이름
	서브테이블 student_point(id,subject) : 아이디, 과목, 점수
	student_main과 student_point id로 foreign key 관계를 설정하고,
	studuent_main에 데이터가 있어야만 student_point 를 입력할 수 있게끔 처리
*/
  create table student_main(
  	id varchar2(10) primary key,
	pass varchar2(10) not null,
	name varchar2(10) unique
  );
  create table student_point(
   id varchar2(10) references student_main(id),
   subject varchar2(10) check(subject in('math','science','english'))
  );
