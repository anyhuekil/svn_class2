drop table member;
create table member(
	id VARCHAR2(30) PRIMARY key,
	pw VARCHAR2(30) NOT NULL, 
	name VARCHAR2(50) not null,
	point NUMBER DEFAULT 0,
	auth VARCHAR2(20),
	email VARCHAR2(100),
	rdate date,
	address VARCHAR2(200));
select * from member;
insert into member values
	('aaa','aaa','홍길동',0,'admin','a@naver.com',sysdate, '서울용산'); 
insert into member values
	('bbb','bbb','성춘향',1000,'admin','b@naver.com',sysdate, '서울강남');
commit;
select * from member where id='aaa' and pw='aaa';
select * from member where id='aaa';
select * from member;
update member set point=2000 where id='aaa';
