/*
숙제
	연봉단위별로 인원수 체크
	범위		사원수 (최고치, 최저치, 평균치)
	1000미만: 	@@
	~2000미만:	@@
	~3000미만:	@@
	~4000미만:	@@
	~5000미만:	@@
	~6000미만:	@@
*/

	select trunc(sal,-3)+1000 ||'미만', count(*)|| '명', max(sal), min(sal), avg(sal) from emp
	group by (trunc(sal,-3))+1000
	order by (trunc(sal,-3))+1000 asc;

/*
	과제.
		부서위치별 사원의 수를 아래형식으로 출력
		부서위치 사원수...
*/

select loc, count(*) from emp, dept
where emp.deptno = dept.deptno
group by dept.loc;



	insert into student10 values( 101020, 'abcd'); 
	insert into student10 values( 101021, 'bcd'); 
	insert into student10 values( 101022, 'adb' ); 
	insert into student10 values( 101023, 'qwe' );

	insert into studentpoint values( 101020, 'math', 60); 
	insert into studentpoint values( 101021, 'cs', 90); 
	insert into studentpoint values( 101022, 'cs', 80); 
	insert into studentpoint values( 101023, 'psy', 70); 
	
	insert into gradeCheck values( 40, 60, 'C'); 
	insert into gradeCheck values( 60, 80, 'B'); 
	insert into gradeCheck values( 80, 100, 'A'); 
	
	/*
		1) 아이디를 조인해서 (equal join)하고
			출력: 이름 과목 점수
		2) 점수를 조인해서 (not equal join)
			출력: 과목 점수 학점등급
		3) student10 studentPoint gradeCheck조인을 해서 (3 equal join)
			출력: 이름 과목 학점등급
	student10 s, studentpoint sp, gradeCheck gc
	*/

	select s.sname 이름, sp.spsub 과목, sp.spGrade 성적 from student10 s, studentpoint sp
	where s.sid = sp.spId;
	
	select sp.spsub 과목, sp.spGrade 성적, gc.subGrade  from gradeCheck gc, studentpoint sp
	where sp.spGrade between gc.lopoint and gc.hipoint;
	
	select s.sname 이름, sp.spsub 과목, gc.subGrade 학점 from student10 s, studentpoint sp, gradeCheck gc
	where s.sid = sp.spId 
	and sp.spGrade between gc.lopoint and gc.hipoint;


/*
		숙제:
			outer join, group을 활용해서 ㅇ
			부서명별 인원을 확인하려고한다.
			아래의 형식으로 출력. 인원이없는곳은 0로 표시. nvl
			부서명 인원 
*/
	select * from dept;
	
		select d.dname, count(*) from emp e , dept d 
		where e.deptno(+) = d.deptno
		group by d.dname;    
		/*
			정보가 더 많은쪽에 (+) 를 붙여줘야 0쪽이 생긴다. 
		
		*/
