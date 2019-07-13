select 
	avg(student_credit) 
from 
	(
	select 
		e.B#, 
		sum(cc.credits) student_credit 
	from 
		Enrollments e, 
		Classes c, 
		Course_credit cc   
	where 
		e.classid = c.classid
		and c.course# = cc.course# 
		and e.lgrade is not null  
	group by 
	e.B#
	);
