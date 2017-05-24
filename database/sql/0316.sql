/*
LPAD/RPAD 함수
특정 문자열에 해당하는 문자열로 채우는 처리를 하는 것을 말한다.
LPAD : 왼쪽에 문자로 채우세요
	LPAD(데이터, 문자크기수, '반복할 문자열')

*/
-- # himan 이라는 문자열 왼쪽에 '#'로 20크기만큼 채워서 출력..
-- 전체크기를 만들고, 해당 크기가 되지 않으면 문자로 채움../
-- 실무 migration varchar : 가변문자형, char: 고정문자형
-- 가변문자형의 데이터를 고정문자형으로 전환하여 이동시킬때 활용
select lpad('himan', 7, '#') from dual;
/*
RPAD : 오늘쪽에 해당 크기가 될 때까지 특정문자로 채움..
ex) good job에서 문자가 20개가 될 때까지 @로 오른쪽에 채움.
*/
SELECT rpad('good job', 20, '@') FROM  dual;
SELECT * FROM emp;
-- 확인예제 enmae과 job을 크기와 저장된 문자열만큼 오른쪽과 왼쪽에 해당 문자열을 아래 형식으로
-- 넣으세요..
-- 1. ENAME과 JOB에서 데이터 크기를 확인한다.
-- 2. 데이터 중에 가장 큰 데이터의 크기를 확인해서,
-- 3. ENAME에는 오른쪽에서 @, JOB에는 왼쪽에 ^를 추가해서 나타나게 한다.
-- 4. 다음과 같은 순서로 출력
--    사원번호 이름(@) 직책(^) 입사일

SELECT MAX(LENGTH(ENAME)), MAX(LENGTH(JOB)) FROM EMP;
SELECT RPAD(ENAME,6,'@') ENAME, LPAD(JOB,9,'^') JOB, HIREDATE FROM EMP;
SELECT * FROM EMP;
/*
LTRIM(), RTRIM()
공백의 문자를 삭제하는 함수.
LTRIM : 왼쪽에 공백문자를 삭제하는 처리
RTRIM : 오른쪽에 공백문자를 삭제하는 처리
ex [공백]This is your best day!! 왼쪽에 공백문자를 제거 처리..!!
*/
SELECT ltrim('	this is your best day!!!') showData,
	length('	this is your best day!!!') beforeLen,
	length(ltrim('	this is your best day!!!')) afterLen
FROM dual;
-- 오른쪽에 공백문자열을 제거하는 처리
SELECT rtrim('What we dwell on is who we become!	') showData,
	   length('What we dwell on is who we become!	') beforeLen,
	   length(rtrim('What we dwell on is who we become!	')) afterLen
FROM dual;
SELECT * FROM emp;
/*
TRIM
	오른쪽, 왼쪽에 있는 공백을 비롯해서 특정 문자열을 삭제 처리하는 함수.
	TRIM('삭제할문자열' FROM 데이터)
	ex) 'aaaaaaGood morning!!aaaaaaaa'에서 오른쪽과 왼쪽에 a문자열을 삭제처리
*/
SELECT trim('a' FROM 'aaaaaaGood morning!!aaaaaaaa') showdata from dual;
SELECT * FROM emp;
-- 확인예제 job에 'MAM'이나 'ER' 'ST'가 있으면 삭제된 내용으로 다음과 같이 출력하세요.
-- 이름 직책

select * from emp;
select ename 이름, job 직책,trim('n' from trim('r' from trim('t' from job))) 직책 from emp ;

/*
날짜 함수..
sysdate : 오라클 내장된 현재 날짜와 시간을 출력하는 객체..
*/
SELECT sysdate FROM dual;
SELECT sysdate+1 FROM dual;
SELECT sysdate-1 FROM dual;
SELECT sysdate today, sysdate-1 yesterday, sysdate+1 tomorrow from dual;
SELECT ename, hiredate, sysdate, sysdate - hiredate FROM emp;
/*
months_between : 두개의 날짜 데이터 사이의 개우러 수를 구하는 내용..
	months_between(비교날짜데이터1, 비교날짜데이터2)
ex) 각 직원들의 근무한 개월 수를 구하세요..
*/
SELECT ename, hiredate, trunc(months_between(sysdate, hiredate)) woringMonth FROM emp;
SELECT * FROM emp;
/*
add_months : 미래시점을 나타내는 함수로 개월 수를 더해서 해당날짜가 나타나게 한다.
	add_months(기준데이터, 이후개월수)
ex) 입사 날짜에서 6개월을 추가한 날짜를 출력하세요.
*/
SELECT ename, hiredate, add_months(hiredate,6) after6Months FROM emp;
SELECT * FROM emp;
/*
숙제1)
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합을 계산하세요..
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여총액 - 인턴기간6개월간 급여 총액을 10단위 절삭해서 출력
사원번호 사원명 입사일 인턴기간만료시점 인턴기간월급여(10단위절삭)
*/
/*
next_day : 주간단위로 가장 가까운 날짜를 산출할 때, 활용..
	next_day(날짜데이터, '요일') : 해당 요일에 가장 가까운 날짜 출력..
*/
SELECT sysdate, next_day(sysdate, '수요일') FROM dual;
/*
확인예제) 사원들의 입사후, 첫번째 토요일을 출력하세요..
*/
SELECT ename, hiredate, next_day(hiredate, '토요일') firstHoliday FROM emp;

SELECT * FROM emp;
/*
last_day 함수
	해당 달의 마지막 날짜를 반환처리.
*/
SELECT last_day(sysdate) thisLastDate, last_day(sysdate)+1 nestFirsDate FROM dual; -- 다음달 첫날
