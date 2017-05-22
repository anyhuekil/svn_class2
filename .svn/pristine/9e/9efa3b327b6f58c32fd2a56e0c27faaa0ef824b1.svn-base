/* 숙제 연봉에 따른 등급체계를 나눌려고 한다.
decode를 활용해서,
	1000 미만		F등급	성과급 3%
	1000 ~ 2000미만	E등급	성과급 5%
	2000 ~ 3000미만	D등급	성과급 7%
	3000 ~ 4000미만	C등급	성과급 4%
	4000 ~ 5000미만	B등급	성과급 3%
	5000 ~ 6000미만	A등급	성과급 2%
이름 부서 연봉 연봉등급 성과급 총액(연봉+성과급)
*/
select ename, sal, 
		decode(trunc(sal + 1000, -3)/1000, 1, 'F등급',
											2, 'E등급',
											3, 'D등급',
											4, 'C등급',
											5, 'B등급',
											6, 'A등급',
											'기타') "연봉등급",
		decode(trunc(sal + 1000, -3)/1000, 1, sal * 0.03,
											2, sal * 0.05,	
											3, sal * 0.07,	
											4, sal * 0.04,	
											5, sal * 0.03,	
											6, sal * 0.02,
											sal) "성과급",
		decode(trunc(sal + 1000, -3)/1000, 1, sal * 1.03,
											2, sal * 1.05,	
											3, sal * 1.07,	
											4, sal * 1.04,	
											5, sal * 1.03,	
											6, sal * 1.02,
											sal) "총액"										
from emp;

/*
숙제) 입사 분기 기준 표시(1/4, 2/4, 3/4, 4/4) 입사 분기를 표시
사원번호, 이름, 입사(년/월), 입사분기
*/
select empno, ename, to_char(hiredate, 'YY/MM'),
	case when trunc((to_number(to_char(hiredate, 'MM'))-1)/3) = 0 then '1사분기'
		when trunc((to_number(to_char(hiredate, 'MM'))-1)/3) = 1 then '2사분기'
		when trunc((to_number(to_char(hiredate, 'MM'))-1)/3) = 2 then '3사분기'
		when trunc((to_number(to_char(hiredate, 'MM'))-1)/3) = 3 then '4사분기'
		else '오류'
	end "입사분기"
from emp;