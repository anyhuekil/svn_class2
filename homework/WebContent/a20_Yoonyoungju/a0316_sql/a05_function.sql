/*
숙제1)
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합을 계산하시오
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여총액 - 인턴기간6개워간 급여 총액을 10단위 절삭해서 출력

사원번호  사원명  입사일  인턴기간만료시점   인턴기간월급여총액(10단위절삭)

*/
select empno"사워번호",ename"사원명",hiredate"입사일",add_months(hiredate,6)"인턴기간만료시점"
,trunc((sal/13) * 0.7* 6,-1)"인턴기간월급여총액" from emp;
