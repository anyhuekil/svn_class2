/*
숙제 
emp03복사테이블 생성.
1. empno의 가장 작은수보다 -1. mgr: cleark의 mgr(4자리숫자형식)입력, sal: 평균연봉, comm: 전체 합계.
2. 수정 ename: '신길동', job = superman, hiredate는 최근입사일+1.

*/

	create table emp03 as select * from emp;
	SELECT * from emp03;
	select min(empno) from emp03; --7369
	select avg(sal) from emp03; -- 2073.21
	select sum(comm) from emp03; -- 2200
	
	insert into emp03(ename, empno, mgr, sal, comm ) values ('신길동', '7368', '3824', '2073.21', '2200' );
	update emp03 set ename = '신길동', job = 'superman', hiredate= to_date('1983/01/12') +1;
	select * from emp03;



/*
	숙제: login 인하는 화면을 만들고 id와 password를 체크하고, 
		다음화면에서 id@@@님 환영합니다. 남은 point는 @@@입니다. 라는 내용이 나타난다고 한다.
		이에필요한 테이블과 테이블구조를 만들어라.
*/
	create table membershipSecurity( 
		memberNumber number(7,0) primary key, 
		memberId varchar2(10),
		memberPswd varchar2(10)
		);
		
	create table membershipVIP(
		memberNumber number(7,0) references membershipSecurity(memberNumber),
		memberPoint number(7, 0),
		memberVIPLevel varchar(7) primary key
	);

/*
숙제: 
	참조키 관계에 있는 테이블 구성하기
메인테이블 student_main(id, pass, name) : 아이디 , 패스워드, 이름
서브테이블 student_point(id, subject, point); 아이디, 과목, 점수.
 student_main과 student_point id로 foreignkey 관계를 설정하고 
 student_maiun에 데이터가 있어야만 student_point입력할수 있게끔 처리. 

*/
create table student_main(
	id number(7,2) primary key,
	pass varchar2(5),
	name varchar2(10) 
);
create table student_point(
	id number(7,2) references student_main(id),
	subject varchar2(10),
	point number(3,2) primary key
 );


