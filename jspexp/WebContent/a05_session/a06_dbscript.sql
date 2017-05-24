create table member(
	memid VARCHAR2(50) PRIMARY KEY,
	pass varchar2(30),
	name varchar2(50),
	point number,
	auth varchar2(20)
);
insert into member values('himan','7777','하이맨',10,'admin');
insert into member values('superman','8888','슈퍼맨',20,'user');
insert into member values('legend','9999','홍길동',50,'guest');
