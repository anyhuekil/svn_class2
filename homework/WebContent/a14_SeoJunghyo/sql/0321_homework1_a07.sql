/* 과제1. (homework 1)
 연봉 단위별로 인원수를 체크하세요.
 1000 미만         사원수(최고치, 최저치, 평균치)
 1000~2000 미만				
 2000~3000 미만				
 3000~4000 미만				
 4000~5000 미만
 5000~6000 미만
*/ 	
	select trunc(sal,-3)+1000 "연봉단위~미만" , count(*) 사원수, max(sal) 최고치, min(sal) 최소치, avg(sal) 평균치 from emp group by trunc(sal,-3)+1000 order by  trunc(sal,-3)+1000 ;
	