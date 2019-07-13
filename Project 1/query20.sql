column deptname format a10

Select 
	Deptname as "deptname", 
	avg(student_credit) average_total_credits 
From 
	(
	Select 
		e.B#, 
		s.deptname, 
		sum(cc.credits) student_credit 
	From 
		Students s, 
		Enrollments e, 
		Classes c, 
		Course_credit cc   
	Where 
		s.B# = e.B# 
		and e.classid = c.classid
		and c.course# = cc.course# 
		and e.lgrade is not null  
	Group by 
		e.B#, 
		s.deptname 
	) 
Group by 
deptname;

	