/*
숙제1)
6개월의 인턴기간에는 급여의 70%만 지급하기로 했다.
사원의 인턴기간만료시점을 출력하고, 6개월간의 급여의 총합을 계산하세요.
월급여 - sal/13
인턴기간 - 월급여의 70%
인턴기간월급여 총액 - 인턴기간 6개월간 급여 총액을 10단위 절삭해서 출력
사원번호	사원명	입사일	인턴기간만료시점		인턴기간월급여(10단위절삭)
*/
select * from emp;
select empno, ename, hiredate, add_months(hiredate,6) "expire",trunc(((sal/13)*0.7)*6,-1)"pay" from emp; 
 /*
 숙제2(보너스 못 해결)
 		근무개월수에 따른 차등 보너스 지급
		가장 오래된 개월~가장최근에 입사한 개월수
		1/3 = 30%, 1/3 = 20%, 1/3=10%(연봉기준)
 		사원, 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 @@초), 근무개월수, 보너스
  */ 
 select ename, hiredate, to_char(sysdate,'YY/MM/DD AM HH:MI:SS'),
 trunc(months_between(sysdate,hiredate)) from emp;

 select trunc(months_between(sysdate,hiredate)) from emp;
  /*
숙제3 
조회값이 '1981년01월01일' 부터 '1982년 12월 12일까지' 사이의 데이터 중,
	  부서가 30인 데이터를 조회하여, 
LIST형식
	  사원명(10자리-앞에 #기호 처리)
	  직책(10자리-나머지뒤에 '-'처리)
	  입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
	  연봉(####1,600.0 표시)로 나타내시오.
*/
select lpad(ename,10,'#'), rpad(job,10,'-'), to_char(hiredate,' YY"년"MM"월"DD"일" DAY HH24 "시" MM"분"SS"초"'),
 lpad(sal,10,'#') from emp
 where (hiredate between '1981/01/01' and '1982/12/12') and deptno=30;

-- 숙제 	이름 		관리자번호		 보너스 ==>데이터가 없을때는 관리자번호경우 '최고레벨','보너스'는 '0'표시
select ename,nvl(to_char(mgr,'9999'),'최고관리자'),  nvl(comm,0) from emp;


/*
숙제 
연봉에 따른 등급체계를 나누려고 한다. 
decode를 활용해서, 
		1000 미만 F등급               성과급 3%
		1000 ~ 2000 미만 E등급     성과급 5%
		2000 ~ 3000 미만 D등급          성과급 7%
		3000 ~ 4000 미만 C등급          성과급 4%
		4000 ~ 5000 미만 B등급         성과급 3%
		5000이상 A등급               성과급 2%
이름		부서		연봉등급		성과급		총액(연봉+성과급)
*/


select ename, deptno,
		 decode(round((sal+500),-3), '1000', 'F등급'
		 										,'2000', 'E등급'
		 										,'3000', 'D등급'
		 										,'4000', 'C등급'
		 								,'5000','B등급'
										,'6000','A등급'
										,'등급외'
						 ) "등급" ,
		decode('등급','F등급',sal*0.02,
							 'E등급', sal*0.05,
							 'D등급' ,sal*0.07,
							 'C등급' ,sal*0.04,
							 'B등급' ,sal*0.03,
						sal*0.02
	) "성과급",
	decode('등급','F등급',sal*1.02,
							 'E등급', sal*1.05,
							 'D등급' ,sal*1.07,
							 'C등급' ,sal*1.04,
							 'B등급' ,sal*1.03,
						sal*1.02
	) "총연봉",floor(sal)
 FROM EMP;





/*				                       
숙제)입사 분기 기준 표시(1/4,2/4,3/4,4/4) 입사 분기를 표기
사원번호, 이름, 입사(년/월), 입사분기

*/
select empno, ename, to_char(hiredate,'YY/MM'),
		case when to_char(hiredate,'MM')<=3 then '1분기'
		     when to_char(hiredate,'MM')<=6 then '2분기'
		     when to_char(hiredate,'MM')<=9then '3분기'
		     when to_char(hiredate,'MM')>=10 then '4분기'
				end  result
from emp;








