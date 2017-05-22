/* 과제(homework)
 outer join, group을 활용하여 부서명별 인원을 확인하려고 한다. 아래의 형식으로 출력하세요. 인원이 없는 곳은 0으로 표시
 부서명 인원수 
*/

select d.dname 부서명, count(e.ename) 인원수 from emp e, dept d where e.deptno(+)=d.deptno group by d.dname;