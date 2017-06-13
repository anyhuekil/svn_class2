create table board(
	no number primary key,
	refno number,
	subject varchar2(100),
	content varchar2(1000),
	pass varchar2(30),
	writer varchar2(50),
	readcount number,
	regdate date,
	email varchar2(100)
);
create sequence board_seq
	start with 1
	increment by 1
	maxvalue 999999
	minvalue 1
	nocycle
	cache 20;
