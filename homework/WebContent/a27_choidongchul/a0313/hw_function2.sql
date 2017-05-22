/*
		숙제1) 6개월의 인턴기간에는 급여의 70%만 지급하기로 했다
		사원의 인턴기간만료시점을 출력하고, 6개월 간의 급여의 총합을 계산하세요
		월급여 - sal/13
		인턴기간 - 월급여의 70%
		인턴기간월급여총액 - 인턴기간6개월간 급여 총액을 10단위 절삭해서 출력
		
		사원번호 사원명 입사일 인턴기간만료시점 인턴기간월급여총액(10단위절삭)
	*/
		select empno "사원번호", ename "사원명", hiredate "입사일", add_months(hiredate,6) "인턴기간만료시점", trunc(sal*1/13*0.7*6,-2) "인턴기간월급여" from emp;
		
		/*
		숙제2.
		급여계산 ... 3단계 급여일을 나누어서 출력하세요
			1단계 : 당월 20일
			2단계 : 당월 마지막 날
			3단계 : 다음달 10일
			사원 입사일 첫월급1 첫월급2 첫월급3
	*/
		select ename "사원", hiredate "입사일", to_date(substr(hiredate,1,6)||'20') "첫월급1", last_day(hiredate) "첫월급2", last_day(add_months(hiredate,1)) "첫월급3" from emp;
		
	/*
		숙제3.
			근무개월수에 따른 차등 보너스 지급
			가장 오래된 개월 ~ 가장 최근에 입사한 개월수
			1/3=30%, 1/3=20%, 1/3=10%
			사원, 입사일, 현재날짜(@@/@@/@@ AM @@시 @@분 @@초), 근무개월수, 보너스 
	*/
	
	select count(ename) from emp; -- 14 명  ---> 5/5/4
	select * from emp order by hiredate; -- 1980-12-17 ~ 1981-04-02 / 1981-05-01 ~ 1981-11-17 / 1981-12-03 ~ 1983-01-12
	
	select ename "사원", 
		to_char(hiredate,'YY/MM/DD AM HH"시 "MI"분 "SS"초"') "입사일", 
		to_char(sysdate,'YY/MM/DD AM HH"시 "MI"분 "SS"초"') "현재날짜", 
		floor(months_between(sysdate,hiredate)) "근무개월수",
		case 
			when hiredate<'1981/04/02' then sal*0.3
			when hiredate<'1981/11/17' then sal*0.2
			when hiredate<'1983/01/12' then sal*0.1
		else 0
		end "보너스"
	from emp;
		
		/*
		숙제.
		조회값이 1981년 01월 01일 부터 1982년 12월 12일 사이의 데이터 중, 부서가 30인 데이터를 조회하여, 
		
		사원명(10자리-앞에#기호처리)
		직책(10자리-나머지 뒤에 '-'처리)
		입사일(@@년 @@월 @@일 @요일 24시 @@분 @@초)
		연봉(####1,600.0)	로 나타내세요.
		
	*/
		select lpad(ename,10,'#'), rpad(job,10,'-'), to_char(hiredate,'YY"년" MM"월" DD"일" DY"요일" HH24"시" MI"분" SS"초"'),
		lpad(to_char(sal,9999.9),11,'#')
		from emp 
		where hiredate between to_date('19810101','YYYY-MM-DD') and to_date('19821212','YYYY-MM-DD') and deptno=30;
		
	/*
	숙제.
		이름 관리자번호 보너스 ==> 데이터가 없을 때는 관리자번호 경우 '최고레벨', 보너스는 '0' 표시
	*/
		select ename "이름",
		decode(nvl(mgr,0),0,'최고레벨',mgr) "관리자번호" ,		
		nvl(comm,0) "보너스" 
		from emp;
		
	/*
	숙제. 연봉에 따른 등급체계를 나눌려고 한다.
			decode를 활용해서
						 1000 미만 	F등급 		성과급 3%
				1000 - 2000 미만 	E등급		성과급 5%
				2000 - 3000 미만 	D등급		성과급 7%
				3000 - 4000 미만 	C등급		성과급 4%
				4000 - 5000 미만 	B등급		성과급 3%
				5000 - 6000 미만 	A등급		성과급 2%
			
			이름 부서 연봉 연봉등급 성과급 총액(연봉+성과급) 
	*/
	decode(substr(sal),)
	
	select 
		ename "이름", deptno "부서", sal "연봉",
		decode(substr(sal,1,1),1,'E등급',2,'D등급',3,'C등급',4,'B등급',5,'A등급','F등급') "연봉등급",
		decode(substr(sal,1,1),1,sal*0.05,2,sal*0.07,3,sal*0.04,4,sal*0.03,5,sal*0.02,sal*0.03) "성과급",
		decode(substr(sal,1,1),1,sal+sal*0.05,2,sal+sal*0.07,3,sal+sal*0.04,4,sal+sal*0.03,5,sal+sal*0.02,sal+sal*0.03) "성과급"
	from emp;
	
				/*
		숙제.
			입사분기기준표시(1/4,2/4,3/4,4/4) 입사분기를 표시
			사원번호, 이름, 입사(년/월), 입사분기
		*/
		
		select 
			empno "사원번호", ename "이름", to_char(hiredate,'YY"년" MM"월"') "입사(년/월)",  
			case
				when to_number(substr(hiredate,4,2),99) between 1 and 3 then '1사분기'
				when to_number(substr(hiredate,4,2),99) between 4 and 6 then '2사분기'
				when to_number(substr(hiredate,4,2),99) between 7 and 9 then '3사분기'
				when to_number(substr(hiredate,4,2),99) between 10 and 12 then '4사분기'
			end "입사분기"
		from emp; 
