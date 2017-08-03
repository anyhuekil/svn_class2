SELECT * 
FROM QUEBANK
where 1=1
and que like '%'||''||'%'
and coransw like '%'||''||'%'
and que_type = que_type;
-- 	QUE         varchar2 (100),
-- 	CORANSW     varchar2 (1000),
-- 	QUE_TYPE    varchar2 (10)
delete from quebank where no=21;
insert into QUEBANK values(QUEBANK_SEQ.nextval, '사과를 숟가락으로 파면',
	'애플파인','주관식');

CREATE SEQUENCE QUEBANK_SEQ START WITH 3
                          INCREMENT BY 1
                          MAXVALUE 999999
                          MINVALUE 3
                          NOCYCLE
                          CACHE 20;